.class public Lorg/xbill/DNS/APLRecord$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IZLjava/lang/Object;I)V
    .locals 2
    .param p1, "family"    # I
    .param p2, "negative"    # Z
    .param p3, "address"    # Ljava/lang/Object;
    .param p4, "prefixLength"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/xbill/DNS/APLRecord$a;->a:I

    .line 33
    iput-boolean p2, p0, Lorg/xbill/DNS/APLRecord$a;->b:Z

    .line 34
    iput-object p3, p0, Lorg/xbill/DNS/APLRecord$a;->d:Ljava/lang/Object;

    .line 35
    iput p4, p0, Lorg/xbill/DNS/APLRecord$a;->c:I

    .line 36
    invoke-static {p1, p4}, Lorg/xbill/DNS/APLRecord;->access$000(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid prefix length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method constructor <init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lorg/xbill/DNS/APLRecord$1;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/APLRecord$a;-><init>(IZLjava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;I)V
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "prefixLength"    # I

    .prologue
    .line 51
    invoke-static {p2}, Lorg/xbill/DNS/a;->b(Ljava/net/InetAddress;)I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xbill/DNS/APLRecord$a;-><init>(IZLjava/lang/Object;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/xbill/DNS/APLRecord$a;

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/xbill/DNS/APLRecord$a;

    .line 76
    .local v0, "elt":Lorg/xbill/DNS/APLRecord$a;
    iget v2, p0, Lorg/xbill/DNS/APLRecord$a;->a:I

    iget v3, v0, Lorg/xbill/DNS/APLRecord$a;->a:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/xbill/DNS/APLRecord$a;->b:Z

    iget-boolean v3, v0, Lorg/xbill/DNS/APLRecord$a;->b:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/xbill/DNS/APLRecord$a;->c:I

    iget v3, v0, Lorg/xbill/DNS/APLRecord$a;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/xbill/DNS/APLRecord$a;->d:Ljava/lang/Object;

    iget-object v3, v0, Lorg/xbill/DNS/APLRecord$a;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/APLRecord$a;->c:I

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lorg/xbill/DNS/APLRecord$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lorg/xbill/DNS/APLRecord$a;->b:Z

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    iget v1, p0, Lorg/xbill/DNS/APLRecord$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget v1, p0, Lorg/xbill/DNS/APLRecord$a;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/xbill/DNS/APLRecord$a;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 63
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord$a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget v1, p0, Lorg/xbill/DNS/APLRecord$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord$a;->d:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
