.class abstract Lorg/xbill/DNS/an;
.super Lorg/xbill/DNS/ao;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x347fcbd9f839945L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/ao;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "singleName"    # Lorg/xbill/DNS/Name;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p7}, Lorg/xbill/DNS/ao;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xbill/DNS/an;->singleName:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 29
    return-void
.end method
