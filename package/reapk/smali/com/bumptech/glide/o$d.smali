.class Lcom/bumptech/glide/o$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/o;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/o;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/bumptech/glide/o$d;->a:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/h",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "builder":Lcom/bumptech/glide/h;, "TX;"
    iget-object v0, p0, Lcom/bumptech/glide/o$d;->a:Lcom/bumptech/glide/o;

    invoke-static {v0}, Lcom/bumptech/glide/o;->f(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/o$d;->a:Lcom/bumptech/glide/o;

    invoke-static {v0}, Lcom/bumptech/glide/o;->f(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/o$a;->a(Lcom/bumptech/glide/h;)V

    .line 785
    :cond_0
    return-object p1
.end method
