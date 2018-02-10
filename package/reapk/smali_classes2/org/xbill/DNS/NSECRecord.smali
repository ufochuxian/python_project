.class public Lorg/xbill/DNS/NSECRecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x47adfff377d2c8a9L


# instance fields
.field private next:Lorg/xbill/DNS/Name;

.field private types:Lorg/xbill/DNS/av;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;[I)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "next"    # Lorg/xbill/DNS/Name;
    .param p6, "types"    # [I

    .prologue
    .line 40
    const/16 v2, 0x2f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 41
    const-string v0, "next"

    invoke-static {v0, p5}, Lorg/xbill/DNS/NSECRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    .line 42
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p6

    if-ge v6, v0, :cond_0

    .line 43
    aget v0, p6, v6

    invoke-static {v0}, Lorg/xbill/DNS/au;->a(I)V

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lorg/xbill/DNS/av;

    invoke-direct {v0, p6}, Lorg/xbill/DNS/av;-><init>([I)V

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    .line 46
    return-void
.end method


# virtual methods
.method public getNext()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/xbill/DNS/NSECRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSECRecord;-><init>()V

    return-object v0
.end method

.method public getTypes()[I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v0}, Lorg/xbill/DNS/av;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public hasType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/av;->contains(I)Z

    move-result v0

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    .line 64
    new-instance v0, Lorg/xbill/DNS/av;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/av;-><init>(Lorg/xbill/DNS/at;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    .line 65
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    .line 51
    new-instance v0, Lorg/xbill/DNS/av;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/av;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    .line 52
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v1, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v1}, Lorg/xbill/DNS/av;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    iget-object v1, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v1}, Lorg/xbill/DNS/av;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/av;->toWire(Lorg/xbill/DNS/i;)V

    .line 59
    return-void
.end method
