.class Landroid/support/v7/widget/q$7;
.super Landroid/support/v7/widget/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/q$a;

.field final synthetic b:Landroid/support/v4/view/bm;

.field final synthetic c:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q$a;Landroid/support/v4/view/bm;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/q;

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/v7/widget/q$7;->c:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$7;->a:Landroid/support/v7/widget/q$a;

    iput-object p3, p0, Landroid/support/v7/widget/q$7;->b:Landroid/support/v4/view/bm;

    invoke-direct {p0}, Landroid/support/v7/widget/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/q$7;->c:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$7;->a:Landroid/support/v7/widget/q$a;

    iget-object v1, v1, Landroid/support/v7/widget/q$a;->a:Landroid/support/v7/widget/RecyclerView$w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/RecyclerView$w;Z)V

    .line 355
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/q$7;->b:Landroid/support/v4/view/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bm;->a(Landroid/support/v4/view/bs;)Landroid/support/v4/view/bm;

    .line 360
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ap;->c(Landroid/view/View;F)V

    .line 361
    invoke-static {p1, v2}, Landroid/support/v4/view/ap;->a(Landroid/view/View;F)V

    .line 362
    invoke-static {p1, v2}, Landroid/support/v4/view/ap;->b(Landroid/view/View;F)V

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/q$7;->c:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$7;->a:Landroid/support/v7/widget/q$a;

    iget-object v1, v1, Landroid/support/v7/widget/q$a;->a:Landroid/support/v7/widget/RecyclerView$w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/RecyclerView$w;Z)V

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/q$7;->c:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$7;->a:Landroid/support/v7/widget/q$a;

    iget-object v1, v1, Landroid/support/v7/widget/q$a;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/q$7;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->c()V

    .line 366
    return-void
.end method
