.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/volley/toolbox/NetworkImageView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/toolbox/k$c;Z)V
    .locals 2
    .param p1, "response"    # Lcom/android/volley/toolbox/k$c;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 173
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/k$c;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->access$100(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/android/volley/toolbox/NetworkImageView;->access$100(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->access$000(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/android/volley/toolbox/NetworkImageView;->access$000(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 165
    :cond_0
    return-void
.end method
