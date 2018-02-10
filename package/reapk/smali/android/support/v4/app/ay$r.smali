.class Landroid/support/v4/app/ay$r;
.super Landroid/support/v4/app/ay$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Landroid/support/v4/app/ay$q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ay$d;Landroid/support/v4/app/ay$e;)Landroid/app/Notification;
    .locals 28
    .param p1, "b"    # Landroid/support/v4/app/ay$d;
    .param p2, "extender"    # Landroid/support/v4/app/ay$e;

    .prologue
    .line 715
    new-instance v2, Landroid/support/v4/app/bi$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ay$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ay$d;->F:Landroid/app/Notification;

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/ay$d;->l()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/ay$d;->k()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ay$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/ay$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/ay$d;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ay$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ay$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/ay$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ay$d;->p:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/ay$d;->q:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ay$d;->r:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ay$d;->k:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ay$d;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ay$d;->j:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ay$d;->w:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->G:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->y:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->s:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ay$d;->t:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->u:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->C:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ay$d;->D:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    invoke-direct/range {v2 .. v27}, Landroid/support/v4/app/bi$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 722
    .local v2, "builder":Landroid/support/v4/app/bi$a;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ay$d;->v:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/ay;->a(Landroid/support/v4/app/aw;Ljava/util/ArrayList;)V

    .line 723
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ay$d;->m:Landroid/support/v4/app/ay$t;

    invoke-static {v2, v3}, Landroid/support/v4/app/ay;->a(Landroid/support/v4/app/ax;Landroid/support/v4/app/ay$t;)V

    .line 724
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ay$e;->a(Landroid/support/v4/app/ay$d;Landroid/support/v4/app/ax;)Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 729
    invoke-static {p1}, Landroid/support/v4/app/bi;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Notification;I)Landroid/support/v4/app/ay$a;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "actionIndex"    # I

    .prologue
    .line 739
    sget-object v0, Landroid/support/v4/app/ay$a;->e:Landroid/support/v4/app/bd$a$a;

    sget-object v1, Landroid/support/v4/app/bo;->c:Landroid/support/v4/app/bq$a$a;

    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/app/bi;->a(Landroid/app/Notification;ILandroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ay$a;

    return-object v0
.end method

.method public b(Landroid/app/Notification;)I
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 734
    invoke-static {p1}, Landroid/support/v4/app/bi;->b(Landroid/app/Notification;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 745
    invoke-static {p1}, Landroid/support/v4/app/bi;->c(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 750
    invoke-static {p1}, Landroid/support/v4/app/bi;->d(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 755
    invoke-static {p1}, Landroid/support/v4/app/bi;->e(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public g(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 760
    invoke-static {p1}, Landroid/support/v4/app/bi;->f(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
