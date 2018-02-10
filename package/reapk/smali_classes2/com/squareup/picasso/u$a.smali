.class Lcom/squareup/picasso/u$a;
.super Lcom/squareup/picasso/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final n:[I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;I[IZILjava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/v;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "viewId"    # I
    .param p5, "appWidgetIds"    # [I
    .param p6, "skipCache"    # Z
    .param p7, "errorResId"    # I
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "tag"    # Ljava/lang/Object;

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p7

    move v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/u;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;IIZLjava/lang/String;Ljava/lang/Object;)V

    .line 94
    iput-object p5, p0, Lcom/squareup/picasso/u$a;->n:[I

    .line 95
    return-void
.end method


# virtual methods
.method synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/squareup/picasso/u;->k()Lcom/squareup/picasso/u$c;

    move-result-object v0

    return-object v0
.end method

.method l()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/squareup/picasso/u$a;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 99
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    iget-object v1, p0, Lcom/squareup/picasso/u$a;->n:[I

    iget-object v2, p0, Lcom/squareup/picasso/u$a;->l:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 100
    return-void
.end method
