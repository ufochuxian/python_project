.class Landroid/support/v7/widget/q$5;
.super Landroid/support/v7/widget/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/RecyclerView$w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$w;

.field final synthetic b:Landroid/support/v4/view/bm;

.field final synthetic c:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v4/view/bm;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/q;

    .prologue
    .line 229
    iput-object p1, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$w;

    iput-object p3, p0, Landroid/support/v7/widget/q$5;->b:Landroid/support/v4/view/bm;

    invoke-direct {p0}, Landroid/support/v7/widget/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->p(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 233
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/q$5;->b:Landroid/support/v4/view/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bm;->a(Landroid/support/v4/view/bs;)Landroid/support/v4/view/bm;

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->m(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->c()V

    .line 245
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ap;->c(Landroid/view/View;F)V

    .line 237
    return-void
.end method
