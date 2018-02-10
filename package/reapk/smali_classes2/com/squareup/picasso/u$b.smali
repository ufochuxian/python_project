.class Lcom/squareup/picasso/u$b;
.super Lcom/squareup/picasso/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final n:I

.field private final o:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;IILandroid/app/Notification;ZILjava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/v;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "viewId"    # I
    .param p5, "notificationId"    # I
    .param p6, "notification"    # Landroid/app/Notification;
    .param p7, "skipCache"    # Z
    .param p8, "errorResId"    # I
    .param p9, "key"    # Ljava/lang/String;
    .param p10, "tag"    # Ljava/lang/Object;

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p8

    move/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/u;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;IIZLjava/lang/String;Ljava/lang/Object;)V

    .line 111
    iput p5, p0, Lcom/squareup/picasso/u$b;->n:I

    .line 112
    iput-object p6, p0, Lcom/squareup/picasso/u$b;->o:Landroid/app/Notification;

    .line 113
    return-void
.end method


# virtual methods
.method synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/squareup/picasso/u;->k()Lcom/squareup/picasso/u$c;

    move-result-object v0

    return-object v0
.end method

.method l()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/squareup/picasso/u$b;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    const-string v2, "notification"

    invoke-static {v1, v2}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    .local v0, "manager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/squareup/picasso/u$b;->n:I

    iget-object v2, p0, Lcom/squareup/picasso/u$b;->o:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method
