.class abstract Lorg/xbill/DNS/aw;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7367f49ae7b5ced3L


# instance fields
.field protected nameField:Lorg/xbill/DNS/Name;

.field protected u16Field:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .locals 0
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "u16Field"    # I
    .param p7, "u16Description"    # Ljava/lang/String;
    .param p8, "nameField"    # Lorg/xbill/DNS/Name;
    .param p9, "nameDescription"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 34
    invoke-static {p7, p6}, Lorg/xbill/DNS/aw;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/aw;->u16Field:I

    .line 35
    invoke-static {p9, p8}, Lorg/xbill/DNS/aw;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/aw;->nameField:Lorg/xbill/DNS/Name;

    .line 36
    return-void
.end method


# virtual methods
.method protected getNameField()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xbill/DNS/aw;->nameField:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method protected getU16Field()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/xbill/DNS/aw;->u16Field:I

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
    .line 46
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/aw;->u16Field:I

    .line 47
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/aw;->nameField:Lorg/xbill/DNS/Name;

    .line 48
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
    .line 40
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/aw;->u16Field:I

    .line 41
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v0, p0, Lorg/xbill/DNS/aw;->nameField:Lorg/xbill/DNS/Name;

    .line 42
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/aw;->u16Field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v1, p0, Lorg/xbill/DNS/aw;->nameField:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 71
    iget v0, p0, Lorg/xbill/DNS/aw;->u16Field:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 72
    iget-object v0, p0, Lorg/xbill/DNS/aw;->nameField:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 73
    return-void
.end method
