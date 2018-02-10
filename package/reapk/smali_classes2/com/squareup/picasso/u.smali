.class abstract Lcom/squareup/picasso/u;
.super Lcom/squareup/picasso/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/u$b;,
        Lcom/squareup/picasso/u$a;,
        Lcom/squareup/picasso/u$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/a",
        "<",
        "Lcom/squareup/picasso/u$c;",
        ">;"
    }
.end annotation


# instance fields
.field final l:Landroid/widget/RemoteViews;

.field final m:I

.field private n:Lcom/squareup/picasso/u$c;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;IIZLjava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/v;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "viewId"    # I
    .param p5, "errorResId"    # I
    .param p6, "skipCache"    # Z
    .param p7, "key"    # Ljava/lang/String;
    .param p8, "tag"    # Ljava/lang/Object;

    .prologue
    .line 35
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p6

    move v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/v;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iput-object p3, p0, Lcom/squareup/picasso/u;->l:Landroid/widget/RemoteViews;

    .line 38
    iput p4, p0, Lcom/squareup/picasso/u;->m:I

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/squareup/picasso/u;->f:I

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lcom/squareup/picasso/u;->f:I

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/u;->a(I)V

    .line 50
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/squareup/picasso/u;->l:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/squareup/picasso/u;->m:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 61
    invoke-virtual {p0}, Lcom/squareup/picasso/u;->l()V

    .line 62
    return-void
.end method

.method a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/squareup/picasso/u;->l:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/squareup/picasso/u;->m:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {p0}, Lcom/squareup/picasso/u;->l()V

    .line 44
    return-void
.end method

.method synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/squareup/picasso/u;->k()Lcom/squareup/picasso/u$c;

    move-result-object v0

    return-object v0
.end method

.method k()Lcom/squareup/picasso/u$c;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/squareup/picasso/u;->n:Lcom/squareup/picasso/u$c;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/squareup/picasso/u$c;

    iget-object v1, p0, Lcom/squareup/picasso/u;->l:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/squareup/picasso/u;->m:I

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/u$c;-><init>(Landroid/widget/RemoteViews;I)V

    iput-object v0, p0, Lcom/squareup/picasso/u;->n:Lcom/squareup/picasso/u$c;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/u;->n:Lcom/squareup/picasso/u$c;

    return-object v0
.end method

.method abstract l()V
.end method
