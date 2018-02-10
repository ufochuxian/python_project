.class public final Lcom/bumptech/glide/o$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/o$b;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/o$b;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Lcom/bumptech/glide/o$b$a;, "Lcom/bumptech/glide/o$b<TA;TT;>.a;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iput-object p1, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/o$b$a;->d:Z

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/o$b$a;->b:Ljava/lang/Object;

    .line 757
    iput-object p2, p0, Lcom/bumptech/glide/o$b$a;->c:Ljava/lang/Class;

    .line 758
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/o$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lcom/bumptech/glide/o$b$a;, "Lcom/bumptech/glide/o$b<TA;TT;>.a;"
    .local p2, "model":Ljava/lang/Object;, "TA;"
    iput-object p1, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/o$b$a;->d:Z

    .line 750
    iput-object p2, p0, Lcom/bumptech/glide/o$b$a;->b:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lcom/bumptech/glide/o;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/o$b$a;->c:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/i;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/i",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Lcom/bumptech/glide/o$b$a;, "Lcom/bumptech/glide/o$b<TA;TT;>.a;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    iget-object v0, v0, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-static {v0}, Lcom/bumptech/glide/o;->e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;

    move-result-object v11

    new-instance v0, Lcom/bumptech/glide/i;

    iget-object v1, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    iget-object v1, v1, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-static {v1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/o;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    iget-object v2, v2, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-static {v2}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/l;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/o$b$a;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    invoke-static {v4}, Lcom/bumptech/glide/o$b;->a(Lcom/bumptech/glide/o$b;)Lcom/bumptech/glide/load/b/l;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    invoke-static {v5}, Lcom/bumptech/glide/o$b;->b(Lcom/bumptech/glide/o$b;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    iget-object v6, v6, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-static {v6}, Lcom/bumptech/glide/o;->c(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/m;

    move-result-object v7

    iget-object v6, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    iget-object v6, v6, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-static {v6}, Lcom/bumptech/glide/o;->d(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/d/g;

    move-result-object v8

    iget-object v6, p0, Lcom/bumptech/glide/o$b$a;->a:Lcom/bumptech/glide/o$b;

    iget-object v6, v6, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-static {v6}, Lcom/bumptech/glide/o;->e(Lcom/bumptech/glide/o;)Lcom/bumptech/glide/o$d;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/l;Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/o$d;)V

    invoke-virtual {v11, v0}, Lcom/bumptech/glide/o$d;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/i;

    .line 771
    .local v10, "result":Lcom/bumptech/glide/i;, "Lcom/bumptech/glide/i<TA;TT;TZ;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/o$b$a;->d:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/bumptech/glide/o$b$a;->b:Ljava/lang/Object;

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    .line 774
    :cond_0
    return-object v10
.end method
