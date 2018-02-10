.class public Lorg/jsoup/nodes/c;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "comment"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/h;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/jsoup/nodes/c;->c:Lorg/jsoup/nodes/b;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "#comment"

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 33
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/c;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V

    .line 35
    :cond_0
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lorg/jsoup/nodes/c;->c:Lorg/jsoup/nodes/b;

    const-string v1, "comment"

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
    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
