.class public Lorg/xbill/DNS/WKSRecord$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final A:I = 0x1c

.field public static final B:I = 0x1d

.field public static final C:I = 0x1e

.field public static final D:I = 0x1f

.field public static final E:I = 0x20

.field public static final F:I = 0x21

.field public static final G:I = 0x3e

.field public static final H:I = 0x40

.field public static final I:I = 0x41

.field public static final J:I = 0x42

.field public static final K:I = 0x43

.field public static final L:I = 0x45

.field public static final M:I = 0x47

.field public static final N:I = 0x4c

.field public static final O:I = 0x4e

.field public static final P:I = 0x4f

.field private static Q:Lorg/xbill/DNS/w; = null

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field public static final g:I = 0x8

.field public static final h:I = 0x9

.field public static final i:I = 0xa

.field public static final j:I = 0xb

.field public static final k:I = 0xc

.field public static final l:I = 0xd

.field public static final m:I = 0xe

.field public static final n:I = 0xf

.field public static final o:I = 0x10

.field public static final p:I = 0x11

.field public static final q:I = 0x12

.field public static final r:I = 0x13

.field public static final s:I = 0x14

.field public static final t:I = 0x15

.field public static final u:I = 0x16

.field public static final v:I = 0x17

.field public static final w:I = 0x18

.field public static final x:I = 0x19

.field public static final y:I = 0x1a

.field public static final z:I = 0x1b


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 152
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "IP protocol"

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    .line 156
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 157
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/w;->a(Z)V

    .line 159
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const-string v1, "icmp"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 160
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/4 v1, 0x2

    const-string v2, "igmp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 161
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const-string v1, "ggp"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 162
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/4 v1, 0x5

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 163
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/4 v1, 0x6

    const-string v2, "tcp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 164
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/4 v1, 0x7

    const-string v2, "ucl"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 165
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x8

    const-string v2, "egp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 166
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x9

    const-string v2, "igp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 167
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xa

    const-string v2, "bbn-rcc-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 168
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xb

    const-string v2, "nvp-ii"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 169
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xc

    const-string v2, "pup"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 170
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xd

    const-string v2, "argus"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 171
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xe

    const-string v2, "emcon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 172
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0xf

    const-string v2, "xnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 173
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x10

    const-string v2, "chaos"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 174
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x11

    const-string v2, "udp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 175
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x12

    const-string v2, "mux"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 176
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x13

    const-string v2, "dcn-meas"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 177
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x14

    const-string v2, "hmp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 178
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x15

    const-string v2, "prm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 179
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x16

    const-string v2, "xns-idp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 180
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x17

    const-string v2, "trunk-1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 181
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x18

    const-string v2, "trunk-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 182
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x19

    const-string v2, "leaf-1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 183
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x1a

    const-string v2, "leaf-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 184
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x1b

    const-string v2, "rdp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 185
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x1c

    const-string v2, "irtp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 186
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x1d

    const-string v2, "iso-tp4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 187
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x1e

    const-string v2, "netblt"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 188
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x1f

    const-string v2, "mfe-nsp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 189
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x20

    const-string v2, "merit-inp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 190
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x21

    const-string v2, "sep"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 191
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x3e

    const-string v2, "cftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 192
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x40

    const-string v2, "sat-expak"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 193
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x41

    const-string v2, "mit-subnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 194
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x42

    const-string v2, "rvd"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 195
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x43

    const-string v2, "ippc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 196
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x45

    const-string v2, "sat-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 197
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x47

    const-string v2, "ipcv"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 198
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x4c

    const-string v2, "br-sat-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 199
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x4e

    const-string v2, "wb-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 200
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    const/16 v1, 0x4f

    const-string v2, "wb-expak"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 201
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 208
    sget-object v0, Lorg/xbill/DNS/WKSRecord$a;->Q:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
