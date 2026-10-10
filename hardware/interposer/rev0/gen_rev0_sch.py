#!/usr/bin/env python3
"""Generate the Rev 0 'test probe' KiCad 7 schematic.

Structural schematic for routing: Z80 pass-through (plug + socket),
4x 74AHCT165 PISO snapshot front end, Pico 2 W module, 5 V input, decoupling.
Buses are connected by net labels (standard practice), so re-mapping
GPIO assignments later is a label edit, not a re-route.

Regenerate: python3 gen_rev0_sch.py  (writes rev0.kicad_sch)
KiCad is not required to generate; open/re-save in KiCad 7+ to normalize.
"""
import uuid, datetime

def uid():
    return str(uuid.uuid4())

def prop(name, value, x, y, hide=False):
    fx = '(effects (font (size 1.27 1.27))' + (' (hide yes))' if hide else ')')
    return f'    (property "{name}" "{value}" (at {x} {y} 0) {fx})\n'

class Symbol:
    def __init__(self, lib, name, ref_letter, w, h):
        self.lib_id = f'{lib}:{name}'
        self.name = name
        self.ref_letter = ref_letter
        self.w, self.h = w, h
        self.pins = []  # (number, pinname, side, offset_from_top)
    def add(self, num, pname, side, off):
        self.pins.append((num, pname, side, off))
        return self
    def pin_pos(self, num):
        """symbol-local anchor of pin connection point"""
        for n, p, side, off in self.pins:
            if n == num:
                hw, hh = self.w/2, self.h/2
                if side == 'L': return (-hw, -hh + off)
                if side == 'R': return ( hw, -hh + off)
                if side == 'T': return (-hw + off, -hh)
                return (-hw + off, hh)
        raise KeyError(num)
    def lib_sexpr(self):
        s = f'  (symbol "{self.lib_id}" (pin_names (offset 0.508)) (in_bom yes) (on_board yes)\n'
        s += prop('Reference', self.ref_letter, 0, -self.h/2 - 2.54)
        s += prop('Value', self.name, 0, -self.h/2 - 5.08)
        s += prop('Footprint', '', 0, 0, True)
        s += prop('Datasheet', '', 0, 0, True)
        hw, hh = self.w/2, self.h/2
        s += f'    (symbol "{self.name}_0_1"\n      (rectangle (start {-hw} {-hh}) (end {hw} {hh}) (stroke (width 0.254) (type default)) (fill (type background))))\n'
        s += f'    (symbol "{self.name}_1_1"\n'
        for n, p, side, off in self.pins:
            x, y = self.pin_pos(n)
            rot = {'L': 0, 'R': 180, 'T': 270, 'B': 90}[side]
            # anchor at box edge; pin body extends outward
            if side == 'L': ax, ay = x - 2.54, y
            elif side == 'R': ax, ay = x + 2.54, y
            elif side == 'T': ax, ay = x, y - 2.54
            else: ax, ay = x, y + 2.54
            s += (f'      (pin passive line (at {ax} {ay} {rot}) (length 2.54)'
                  f' (name "{p}" (effects (font (size 1.27 1.27))))'
                  f' (number "{n}" (effects (font (size 1.27 1.27)))))\n')
            # store absolute anchor for wiring: adjust pin_pos to anchor
        s += '    )\n  )\n'
        return s
    def anchor(self, num):
        """symbol-local connection point (pin outer end)."""
        for n, p, side, off in self.pins:
            if n == num:
                hw, hh = self.w/2, self.h/2
                if side == 'L': return (-hw - 2.54, -hh + off)
                if side == 'R': return ( hw + 2.54, -hh + off)
                if side == 'T': return (-hw + off, -hh - 2.54)
                return (-hw + off, hh + 2.54)
        raise KeyError(num)

# ---------- symbol definitions ----------
def make_z80(name, ref):
    s = Symbol('local', name, ref, 25.4, 106.68)
    left = [(1,'A10'),(2,'A11'),(3,'A12'),(4,'A13'),(5,'A14'),(6,'A15'),(7,'CLK'),(8,'D4'),(9,'D3'),(10,'D5'),(11,'D6'),(12,'+5V'),(13,'D2'),(14,'D7'),(15,'D0'),(16,'D1'),(17,'/INT'),(18,'/NMI'),(19,'/HALT'),(20,'/MREQ')]
    right = [(40,'A9'),(39,'A8'),(38,'A7'),(37,'A6'),(36,'A5'),(35,'A4'),(34,'A3'),(33,'A2'),(32,'A1'),(31,'A0'),(30,'GND'),(29,'/RFSH'),(28,'/M1'),(27,'/RESET'),(26,'/BUSRQ'),(25,'/WAIT'),(24,'/BUSAK'),(23,'/WR'),(22,'/RD'),(21,'/IORQ')]
    for i,(n,p) in enumerate(left):  s.add(n,p,'L', 5.08 + i*5.08)
    for i,(n,p) in enumerate(right): s.add(n,p,'R', 5.08 + i*5.08)
    return s

def make_165(name):
    # 74AHCT165 PISO: latch 8 bus lines at SH//LD strobe; PIO clocks out
    s = Symbol('local', name, 'U', 20.32, 45.72)
    left = [(1,'SH//LD'),(2,'CLK'),(15,'CLK_INH'),(11,'A'),(12,'B'),(13,'C'),(14,'D'),(3,'E'),(4,'F'),(5,'G'),(6,'H')]
    right = [(16,'VCC'),(10,'SER'),(9,'QH'),(7,'/QH'),(8,'GND')]
    for i,(n,p) in enumerate(left):  s.add(n,p,'L', 5.08 + i*5.08)
    for i,(n,p) in enumerate(right): s.add(n,p,'R', 5.08 + i*5.08)
    return s

def make_pico():
    phys = [(1,'GP0'),(2,'GP1'),(3,'GND'),(4,'GP2'),(5,'GP3'),(6,'GP4'),(7,'GP5'),(8,'GND'),(9,'GP6'),(10,'GP7'),(11,'GP8'),(12,'GP9'),(13,'GND'),(14,'GP10'),(15,'GP11'),(16,'GP12'),(17,'GP13'),(18,'GND'),(19,'GP14'),(20,'GP15'),
            (21,'GP16'),(22,'GP17'),(23,'GND'),(24,'GP18'),(25,'GP19'),(26,'GP20'),(27,'GP21'),(28,'GND'),(29,'GP22'),(30,'RUN'),(31,'GP26'),(32,'GP27'),(33,'GND'),(34,'GP28'),(35,'ADC_VREF'),(36,'3V3_OUT'),(37,'3V3_EN'),(38,'GND'),(39,'VSYS'),(40,'VBUS')]
    s = Symbol('local', 'PICO2W', 'U', 25.4, 106.68)
    for i,(n,p) in enumerate(phys[:20]): s.add(n,p,'L', 5.08 + i*5.08)
    for i,(n,p) in enumerate(phys[20:]): s.add(n,p,'R', 5.08 + i*5.08)
    return s

def make_cap():
    s = Symbol('local', 'CAP_100N', 'C', 10.16, 7.62)
    s.add(1,'1','L', 3.81); s.add(2,'2','R', 3.81)
    return s

def make_pwr():
    s = Symbol('local', 'PWR_5V_IN', 'J', 12.7, 7.62)
    s.add(1,'+5V','L', 3.81); s.add(2,'GND','R', 3.81)
    return s

# ---------- net assignment ----------
Z80NET = {  # z80 pin -> net label
    1:'A10',2:'A11',3:'A12',4:'A13',5:'A14',6:'A15',7:'CLK',8:'D4',9:'D3',10:'D5',11:'D6',12:'+5V',13:'D2',14:'D7',15:'D0',16:'D1',17:'/INT',18:'/NMI',19:'/HALT',20:'/MREQ',
    21:'/IORQ',22:'/RD',23:'/WR',24:'/BUSAK',25:'/WAIT',26:'/BUSRQ',27:'/RESET',28:'/M1',29:'/RFSH',30:'GND',31:'A0',32:'A1',33:'A2',34:'A3',35:'A4',36:'A5',37:'A6',38:'A7',39:'A8',40:'A9'}
# 74AHCT165 PISO chain: 4 chips x 8 inputs = 32 bus lines latched at the
# cycle strobe, then clocked into the Pico (~210ns for 32 bits via PIO).
BUF = [
    ('U1', ['A0','A1','A2','A3','A4','A5','A6','A7']),
    ('U2', ['A8','A9','A10','A11','A12','A13','A14','A15']),
    ('U3', ['D0','D1','D2','D3','D4','D5','D6','D7']),
    ('U4', ['/MREQ','/IORQ','/RD','/WR','/M1','/RFSH','/RESET','CLK']),
]
# chain: U1.SER<-GND-style start... SER of first = GND? no: U1 SER <- GND
# would shift zeros; standard: U1.QH->U2.SER, U2.QH->U3.SER, U3.QH->U4.SER,
# U4.QH->Pico SDAT. SH//LD and SCLK common to all.
# pico gp -> net (preliminary mapping; firmware owns final assignment)
PICO_NET = {'GP0':'SH//LD',   # PIO: latch strobe (all '165)
            'GP1':'SCLK',     # PIO: shift clock (all '165)
            'GP2':'SDAT',     # from U4.QH
            'GP3':'Z80_CLK',  # cycle timing reference
            'GP4':'STROBE',   # bus-cycle strobe (MREQ/IORQ glue)
            'GP5':'TRIG'}     # external trigger in

# ---------- emit ----------
syms = {'Z80': make_z80('Z80_DIP40','J'), '165': make_165('74AHCT165'),
        'PICO': make_pico(), 'CAP': make_cap(), 'PWR': make_pwr()}

out = []
out.append('(kicad_sch (version 20230121) (generator "eeschema") (generator_version "7.0")')
out.append(f'  (uuid "{uid()}")')
out.append('  (paper "A3")')
out.append(f'  (title_block (title "o1nextgen interposer Rev 0 test probe") (date "{datetime.date.today()}") (rev "0.1") (comment 1 "Snoop-only Z80 bus probe: pass-through socket, 4x 74AHCT165 PISO snapshot front end, Pico 2 W. NOT the production interposer."))')
out.append('  (lib_symbols')
for s in syms.values(): out.append(s.lib_sexpr().rstrip('\n'))
out.append('  )')

wires, labels, insts, sinst = [], [], [], []

def place(symkey, ref, value, x, y, netmap):
    s = syms[symkey]
    sinst.append((ref, value))
    body = [f'  (symbol (lib_id "{s.lib_id}") (at {x} {y} 0) (unit 1) (exclude_from_sim no) (in_bom yes) (on_board yes) (uuid "{uid()}")',
            f'    (property "Reference" "{ref}" (at {x} {y - s.h/2 - 2.54} 0) (effects (font (size 1.27 1.27))))',
            f'    (property "Value" "{value}" (at {x} {y - s.h/2 - 5.08} 0) (effects (font (size 1.27 1.27))))',
            '    (property "Footprint" "" (at 0 0 0) (effects (font (size 1.27 1.27)) (hide yes)))',
            '    (property "Datasheet" "" (at 0 0 0) (effects (font (size 1.27 1.27)) (hide yes)))']
    for n, p, side, off in s.pins:
        body.append(f'    (pin "{n}" (uuid "{uid()}"))')
        net = netmap.get(p) or netmap.get(n)
        if net:
            ax, ay = s.anchor(n)
            X, Y = x + ax, y + ay
            dx, dy = {'L':(-5.08,0),'R':(5.08,0),'T':(0,-5.08),'B':(0,5.08)}[side]
            wires.append((X, Y, X + dx, Y + dy))
            just = 'left' if side == 'L' else 'right'
            labels.append((net, X + dx, Y + dy, 0, just))
    body.append('  )')
    insts.append('\n'.join(body))

# layout
place('Z80','J1','Z80_PLUG_TO_MB', 60, 90, Z80NET)
place('Z80','J2','Z80_SOCKET_CPU', 120, 90, Z80NET)
CHAIN = ['GND', 'QH1', 'QH2', 'QH3']        # SER sources: U1<-GND(pad), U2<-U1.QH, ...
QHNET = ['QH1', 'QH2', 'QH3', 'SDAT']       # QH nets; last feeds Pico GP2
for i,(ref, nets) in enumerate(BUF):
    nm = {abcd: nets[k] for k, abcd in enumerate(['A','B','C','D','E','F','G','H'])}
    nm.update({'SH//LD':'SH//LD','CLK':'SCLK','CLK_INH':'GND','GND':'GND',
               'VCC':'+5V','SER':CHAIN[i],'QH':QHNET[i]})
    place('165', ref, '74AHCT165', 190, 55 + i*60, nm)
pm = {gp: net for gp, net in PICO_NET.items()}
pm.update({'VSYS':'+5V','3V3_OUT':'+3V3','GND':'GND'})
place('PICO','U5','PICO_2_W', 280, 90, pm)
place('PWR','J3','5V_INPUT', 340, 60, {'+5V':'+5V','GND':'GND'})
for i in range(6):
    place('CAP', f'C{i+1}', '100nF', 340, 90 + i*15, {'1':'+5V','2':'GND'})

for (x1,y1,x2,y2) in wires:
    insts.append(f'  (wire (pts (xy {x1} {y1}) (xy {x2} {y2})) (stroke (width 0) (type default)) (uuid "{uid()}"))')
for (net,x,y,rot,just) in labels:
    insts.append(f'  (label "{net}" (at {round(x,2)} {round(y,2)} {rot}) (effects (font (size 1.27 1.27)) (justify {just} bottom)) (uuid "{uid()}"))')

out.extend(insts)
out.append('  (sheet_instances (path "/" (page "1")))')
si = '  (symbol_instances'
for ref, val in sinst:
    si += f' (path "/" (reference "{ref}") (unit 1) (value "{val}") (footprint ""))'
si += ')'
out.append(si)
out.append(')')

with open('rev0.kicad_sch','w') as f:
    f.write('\n'.join(out) + '\n')
print('wrote rev0.kicad_sch:', len(wires), 'wires,', len(labels), 'labels,', len(sinst), 'symbols')
