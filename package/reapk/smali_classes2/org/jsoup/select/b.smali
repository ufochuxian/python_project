.class abstract Lorg/jsoup/select/b;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/b$b;,
        Lorg/jsoup/select/b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jsoup/select/d;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/select/b;->b:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/select/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/select/d;>;"
    invoke-direct {p0}, Lorg/jsoup/select/b;-><init>()V

    .line 25
    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/select/b;->b()V

    .line 27
    return-void
.end method


# virtual methods
.method a()Lorg/jsoup/select/d;
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lorg/jsoup/select/b;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/select/b;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/d;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lorg/jsoup/select/d;)V
    .locals 2
    .param p1, "replacement"    # Lorg/jsoup/select/d;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/select/b;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/jsoup/select/b;->b:I

    .line 40
    return-void
.end method
