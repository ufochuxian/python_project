.class Lcom/squareup/picasso/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/widget/RemoteViews;

.field final b:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/squareup/picasso/u$c;->a:Landroid/widget/RemoteViews;

    .line 72
    iput p2, p0, Lcom/squareup/picasso/u$c;->b:I

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/squareup/picasso/u$c;

    .line 79
    .local v0, "remoteViewsTarget":Lcom/squareup/picasso/u$c;
    iget v3, p0, Lcom/squareup/picasso/u$c;->b:I

    iget v4, v0, Lcom/squareup/picasso/u$c;->b:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/squareup/picasso/u$c;->a:Landroid/widget/RemoteViews;

    iget-object v4, v0, Lcom/squareup/picasso/u$c;->a:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/squareup/picasso/u$c;->a:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/squareup/picasso/u$c;->b:I

    add-int/2addr v0, v1

    return v0
.end method
