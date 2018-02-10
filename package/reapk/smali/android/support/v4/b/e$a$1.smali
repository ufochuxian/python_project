.class Landroid/support/v4/b/e$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/e$a;


# direct methods
.method constructor <init>(Landroid/support/v4/b/e$a;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/b/e$a;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 60
    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v3}, Landroid/support/v4/b/e$a;->a(Landroid/support/v4/b/e$a;)J

    move-result-wide v4

    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v3}, Landroid/support/v4/b/e$a;->b(Landroid/support/v4/b/e$a;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 61
    .local v0, "dt":J
    long-to-float v3, v0

    mul-float/2addr v3, v8

    iget-object v4, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v4}, Landroid/support/v4/b/e$a;->c(Landroid/support/v4/b/e$a;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 62
    .local v2, "fraction":F
    cmpl-float v3, v2, v8

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    iget-object v3, v3, Landroid/support/v4/b/e$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 63
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    :cond_1
    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v3, v2}, Landroid/support/v4/b/e$a;->a(Landroid/support/v4/b/e$a;F)F

    .line 66
    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v3}, Landroid/support/v4/b/e$a;->d(Landroid/support/v4/b/e$a;)V

    .line 67
    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v3}, Landroid/support/v4/b/e$a;->e(Landroid/support/v4/b/e$a;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_2

    .line 68
    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v3}, Landroid/support/v4/b/e$a;->f(Landroid/support/v4/b/e$a;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_2
    iget-object v3, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    iget-object v3, v3, Landroid/support/v4/b/e$a;->c:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/b/e$a$1;->a:Landroid/support/v4/b/e$a;

    invoke-static {v4}, Landroid/support/v4/b/e$a;->g(Landroid/support/v4/b/e$a;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
