.class public Lorg/xbill/DNS/q;
.super Lorg/xbill/DNS/j;
.source "SourceFile"


# instance fields
.field private a:[B


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/xbill/DNS/j;-><init>(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # [B

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/xbill/DNS/j;-><init>(I)V

    .line 29
    const-string v0, "option data"

    const v1, 0xffff

    invoke-static {v0, p2, v1}, Lorg/xbill/DNS/Record;->checkByteArrayLength(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/q;->a:[B

    .line 30
    return-void
.end method


# virtual methods
.method a(Lorg/xbill/DNS/h;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/q;->a:[B

    .line 35
    return-void
.end method

.method a(Lorg/xbill/DNS/i;)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/i;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/xbill/DNS/q;->a:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 40
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/q;->a:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
