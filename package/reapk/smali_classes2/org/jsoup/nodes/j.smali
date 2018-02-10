.class public Lorg/jsoup/nodes/j;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "declaration"


# instance fields
.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "isProcessingInstruction"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/h;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lorg/jsoup/nodes/j;->c:Lorg/jsoup/nodes/b;

    const-string v1, "declaration"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-boolean p3, p0, Lorg/jsoup/nodes/j;->g:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "#declaration"

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 36
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/jsoup/nodes/j;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "!"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void

    .line 36
    :cond_0
    const-string v0, "?"

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/jsoup/nodes/j;->c:Lorg/jsoup/nodes/b;

    const-string v1, "declaration"

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
    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
