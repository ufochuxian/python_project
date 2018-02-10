.class Landroid/support/v4/widget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/a;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 690
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iget-boolean v3, v3, Landroid/support/v4/widget/a;->k:Z

    if-nez v3, :cond_0

    .line 718
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iget-boolean v3, v3, Landroid/support/v4/widget/a;->i:Z

    if-eqz v3, :cond_1

    .line 695
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iput-boolean v4, v3, Landroid/support/v4/widget/a;->i:Z

    .line 696
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iget-object v3, v3, Landroid/support/v4/widget/a;->g:Landroid/support/v4/widget/a$a;

    invoke-virtual {v3}, Landroid/support/v4/widget/a$a;->a()V

    .line 699
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iget-object v2, v3, Landroid/support/v4/widget/a;->g:Landroid/support/v4/widget/a$a;

    .line 700
    .local v2, "scroller":Landroid/support/v4/widget/a$a;
    invoke-virtual {v2}, Landroid/support/v4/widget/a$a;->c()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v3}, Landroid/support/v4/widget/a;->c()Z

    move-result v3

    if-nez v3, :cond_3

    .line 701
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iput-boolean v4, v3, Landroid/support/v4/widget/a;->k:Z

    goto :goto_0

    .line 705
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iget-boolean v3, v3, Landroid/support/v4/widget/a;->j:Z

    if-eqz v3, :cond_4

    .line 706
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iput-boolean v4, v3, Landroid/support/v4/widget/a;->j:Z

    .line 707
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v3}, Landroid/support/v4/widget/a;->d()V

    .line 710
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/widget/a$a;->d()V

    .line 712
    invoke-virtual {v2}, Landroid/support/v4/widget/a$a;->g()I

    move-result v0

    .line 713
    .local v0, "deltaX":I
    invoke-virtual {v2}, Landroid/support/v4/widget/a$a;->h()I

    move-result v1

    .line 714
    .local v1, "deltaY":I
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/widget/a;->a(II)V

    .line 717
    iget-object v3, p0, Landroid/support/v4/widget/a$b;->a:Landroid/support/v4/widget/a;

    iget-object v3, v3, Landroid/support/v4/widget/a;->h:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
