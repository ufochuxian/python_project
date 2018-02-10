.class public final Landroid/support/v4/media/session/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/p$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J

.field private d:J

.field private e:F

.field private f:J

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:J

.field private j:J

.field private k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/p$b;->a:Ljava/util/List;

    .line 1023
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->j:J

    .line 1030
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/p;)V
    .locals 2
    .param p1, "source"    # Landroid/support/v4/media/session/p;

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/p$b;->a:Ljava/util/List;

    .line 1023
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->j:J

    .line 1039
    iget v0, p1, Landroid/support/v4/media/session/p;->W:I

    iput v0, p0, Landroid/support/v4/media/session/p$b;->b:I

    .line 1040
    iget-wide v0, p1, Landroid/support/v4/media/session/p;->X:J

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->c:J

    .line 1041
    iget v0, p1, Landroid/support/v4/media/session/p;->Z:F

    iput v0, p0, Landroid/support/v4/media/session/p$b;->e:F

    .line 1042
    iget-wide v0, p1, Landroid/support/v4/media/session/p;->ad:J

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->i:J

    .line 1043
    iget-wide v0, p1, Landroid/support/v4/media/session/p;->Y:J

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->d:J

    .line 1044
    iget-wide v0, p1, Landroid/support/v4/media/session/p;->aa:J

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->f:J

    .line 1045
    iget v0, p1, Landroid/support/v4/media/session/p;->ab:I

    iput v0, p0, Landroid/support/v4/media/session/p$b;->g:I

    .line 1046
    iget-object v0, p1, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/p$b;->h:Ljava/lang/CharSequence;

    .line 1047
    iget-object v0, p1, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/support/v4/media/session/p$b;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1050
    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/p;->af:J

    iput-wide v0, p0, Landroid/support/v4/media/session/p$b;->j:J

    .line 1051
    iget-object v0, p1, Landroid/support/v4/media/session/p;->ag:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/media/session/p$b;->k:Landroid/os/Bundle;

    .line 1052
    return-void
.end method


# virtual methods
.method public a(IJF)Landroid/support/v4/media/session/p$b;
    .locals 8
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F

    .prologue
    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/p$b;->a(IJFJ)Landroid/support/v4/media/session/p$b;

    move-result-object v0

    return-object v0
.end method

.method public a(IJFJ)Landroid/support/v4/media/session/p$b;
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "updateTime"    # J

    .prologue
    .line 1125
    iput p1, p0, Landroid/support/v4/media/session/p$b;->b:I

    .line 1126
    iput-wide p2, p0, Landroid/support/v4/media/session/p$b;->c:J

    .line 1127
    iput-wide p5, p0, Landroid/support/v4/media/session/p$b;->i:J

    .line 1128
    iput p4, p0, Landroid/support/v4/media/session/p$b;->e:F

    .line 1129
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/p$b;
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 1254
    iput p1, p0, Landroid/support/v4/media/session/p$b;->g:I

    .line 1255
    iput-object p2, p0, Landroid/support/v4/media/session/p$b;->h:Ljava/lang/CharSequence;

    .line 1256
    return-object p0
.end method

.method public a(J)Landroid/support/v4/media/session/p$b;
    .locals 1
    .param p1, "bufferPosition"    # J

    .prologue
    .line 1140
    iput-wide p1, p0, Landroid/support/v4/media/session/p$b;->d:J

    .line 1141
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroid/support/v4/media/session/p$b;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1266
    iput-object p1, p0, Landroid/support/v4/media/session/p$b;->k:Landroid/os/Bundle;

    .line 1267
    return-object p0
.end method

.method public a(Landroid/support/v4/media/session/p$c;)Landroid/support/v4/media/session/p$b;
    .locals 2
    .param p1, "customAction"    # Landroid/support/v4/media/session/p$c;

    .prologue
    .line 1213
    if-nez p1, :cond_0

    .line 1214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You may not add a null CustomAction to PlaybackStateCompat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/p$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/p$b;
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 1241
    iput-object p1, p0, Landroid/support/v4/media/session/p$b;->h:Ljava/lang/CharSequence;

    .line 1242
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/session/p$b;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 1198
    new-instance v0, Landroid/support/v4/media/session/p$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/support/v4/media/session/p$c;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/p$b;->a(Landroid/support/v4/media/session/p$c;)Landroid/support/v4/media/session/p$b;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/media/session/p;
    .locals 19

    .prologue
    .line 1274
    new-instance v2, Landroid/support/v4/media/session/p;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/p$b;->b:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/p$b;->c:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/p$b;->d:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/p$b;->e:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/p$b;->f:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/media/session/p$b;->g:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/media/session/p$b;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/support/v4/media/session/p$b;->i:J

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/media/session/p$b;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/media/session/p$b;->j:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/p$b;->k:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/p;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-object v2
.end method

.method public b(J)Landroid/support/v4/media/session/p$b;
    .locals 1
    .param p1, "capabilities"    # J

    .prologue
    .line 1173
    iput-wide p1, p0, Landroid/support/v4/media/session/p$b;->f:J

    .line 1174
    return-object p0
.end method

.method public c(J)Landroid/support/v4/media/session/p$b;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1229
    iput-wide p1, p0, Landroid/support/v4/media/session/p$b;->j:J

    .line 1230
    return-object p0
.end method
