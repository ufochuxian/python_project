.class public Lorg/jsoup/nodes/d;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/h;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/jsoup/nodes/d;->c:Lorg/jsoup/nodes/b;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/d;
    .locals 2
    .param p0, "encodedData"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/d;

    invoke-direct {v1, v0, p1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "#data"

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/jsoup/nodes/d;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jsoup/nodes/d;->c:Lorg/jsoup/nodes/b;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object p0
.end method

.method a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 1
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lorg/jsoup/nodes/d;->c:Lorg/jsoup/nodes/b;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
