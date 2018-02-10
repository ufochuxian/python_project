.class public Lcom/blog/www/guideview/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blog/www/guideview/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/blog/www/guideview/f;


# direct methods
.method public constructor <init>(Lcom/blog/www/guideview/f;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/blog/www/guideview/f$a;->a:Lcom/blog/www/guideview/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    const-string v0, ""

    const-string v1, "v click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/blog/www/guideview/f$a;->a:Lcom/blog/www/guideview/f;

    invoke-static {v0}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/blog/www/guideview/g$a;->c()V

    .line 297
    iget-object v0, p0, Lcom/blog/www/guideview/f$a;->a:Lcom/blog/www/guideview/f;

    invoke-virtual {v0}, Lcom/blog/www/guideview/f;->a()V

    .line 298
    return-void
.end method
