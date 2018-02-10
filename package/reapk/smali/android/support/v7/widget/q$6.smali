.class Landroid/support/v7/widget/q$6;
.super Landroid/support/v7/widget/q$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/RecyclerView$w;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$w;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/bm;

.field final synthetic e:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/RecyclerView$w;IILandroid/support/v4/view/bm;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/q;

    .prologue
    .line 287
    iput-object p1, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$w;

    iput p3, p0, Landroid/support/v7/widget/q$6;->b:I

    iput p4, p0, Landroid/support/v7/widget/q$6;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/q$6;->d:Landroid/support/v4/view/bm;

    invoke-direct {p0}, Landroid/support/v7/widget/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->o(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 291
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/q$6;->d:Landroid/support/v4/view/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bm;->a(Landroid/support/v4/view/bs;)Landroid/support/v4/view/bm;

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->l(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->c()V

    .line 307
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 294
    iget v0, p0, Landroid/support/v7/widget/q$6;->b:I

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p1, v1}, Landroid/support/v4/view/ap;->a(Landroid/view/View;F)V

    .line 297
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/q$6;->c:I

    if-eqz v0, :cond_1

    .line 298
    invoke-static {p1, v1}, Landroid/support/v4/view/ap;->b(Landroid/view/View;F)V

    .line 300
    :cond_1
    return-void
.end method
