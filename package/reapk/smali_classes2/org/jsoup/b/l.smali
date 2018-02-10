.class abstract Lorg/jsoup/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:Lorg/jsoup/b/a;

.field d:Lorg/jsoup/b/j;

.field protected e:Lorg/jsoup/nodes/Document;

.field protected f:Lorg/jsoup/helper/DescendableLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsoup/helper/DescendableLinkedList",
            "<",
            "Lorg/jsoup/nodes/f;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/String;

.field protected h:Lorg/jsoup/b/h;

.field protected i:Lorg/jsoup/b/e;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lorg/jsoup/b/e;->c()Lorg/jsoup/b/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/b/e;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/b/l;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)V

    .line 41
    invoke-virtual {p0}, Lorg/jsoup/b/l;->w()V

    .line 42
    iget-object v0, p0, Lorg/jsoup/b/l;->e:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method protected abstract a(Lorg/jsoup/b/h;)Z
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/e;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/b/e;

    .prologue
    .line 24
    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/b/l;->e:Lorg/jsoup/nodes/Document;

    .line 28
    new-instance v0, Lorg/jsoup/b/a;

    invoke-direct {v0, p1}, Lorg/jsoup/b/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/b/l;->c:Lorg/jsoup/b/a;

    .line 29
    iput-object p3, p0, Lorg/jsoup/b/l;->i:Lorg/jsoup/b/e;

    .line 30
    new-instance v0, Lorg/jsoup/b/j;

    iget-object v1, p0, Lorg/jsoup/b/l;->c:Lorg/jsoup/b/a;

    invoke-direct {v0, v1, p3}, Lorg/jsoup/b/j;-><init>(Lorg/jsoup/b/a;Lorg/jsoup/b/e;)V

    iput-object v0, p0, Lorg/jsoup/b/l;->d:Lorg/jsoup/b/j;

    .line 31
    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {v0}, Lorg/jsoup/helper/DescendableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/l;->f:Lorg/jsoup/helper/DescendableLinkedList;

    .line 32
    iput-object p2, p0, Lorg/jsoup/b/l;->g:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected w()V
    .locals 3

    .prologue
    .line 47
    :cond_0
    iget-object v1, p0, Lorg/jsoup/b/l;->d:Lorg/jsoup/b/j;

    invoke-virtual {v1}, Lorg/jsoup/b/j;->a()Lorg/jsoup/b/h;

    move-result-object v0

    .line 48
    .local v0, "token":Lorg/jsoup/b/h;
    invoke-virtual {p0, v0}, Lorg/jsoup/b/l;->a(Lorg/jsoup/b/h;)Z

    .line 50
    iget-object v1, v0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v2, Lorg/jsoup/b/h$h;->EOF:Lorg/jsoup/b/h$h;

    if-ne v1, v2, :cond_0

    .line 53
    return-void
.end method

.method protected x()Lorg/jsoup/nodes/f;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jsoup/b/l;->f:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0
.end method
