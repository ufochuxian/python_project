.class final Lcom/android/volley/toolbox/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/k;->a(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/k$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/android/volley/toolbox/k$1;->a:I

    iput-object p2, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/volley/toolbox/k$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/toolbox/k$c;Z)V
    .locals 2
    .param p1, "response"    # Lcom/android/volley/toolbox/k$c;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/android/volley/toolbox/k$1;->c:I

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/volley/toolbox/k$1;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/volley/toolbox/k$1;->a:I

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/volley/toolbox/k$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :cond_0
    return-void
.end method
