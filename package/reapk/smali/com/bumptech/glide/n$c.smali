.class Lcom/bumptech/glide/n$c;
.super Lcom/bumptech/glide/g/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/b",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/g/b/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/n$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/n$1;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/bumptech/glide/n$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/n$c;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/n$c;
    .param p1, "x1"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/bumptech/glide/n$c;->c:I

    return p1
.end method

.method static synthetic b(Lcom/bumptech/glide/n$c;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/n$c;
    .param p1, "x1"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/bumptech/glide/n$c;->b:I

    return p1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/g/b/k;)V
    .locals 2
    .param p1, "cb"    # Lcom/bumptech/glide/g/b/k;

    .prologue
    .line 313
    iget v0, p0, Lcom/bumptech/glide/n$c;->c:I

    iget v1, p0, Lcom/bumptech/glide/n$c;->b:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/g/b/k;->a(II)V

    .line 314
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/g/a/c",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "glideAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<-Ljava/lang/Object;>;"
    return-void
.end method
