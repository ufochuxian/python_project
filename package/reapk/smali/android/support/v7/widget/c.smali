.class Landroid/support/v7/widget/c;
.super Landroid/database/DataSetObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/c$g;,
        Landroid/support/v7/widget/c$d;,
        Landroid/support/v7/widget/c$b;,
        Landroid/support/v7/widget/c$e;,
        Landroid/support/v7/widget/c$f;,
        Landroid/support/v7/widget/c$c;,
        Landroid/support/v7/widget/c$a;
    }
.end annotation


# static fields
.field static final a:Z = false

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String; = "historical-records"

.field static final d:Ljava/lang/String; = "historical-record"

.field static final e:Ljava/lang/String; = "activity"

.field static final f:Ljava/lang/String; = "time"

.field static final g:Ljava/lang/String; = "weight"

.field public static final h:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final i:I = 0x32

.field private static final m:I = 0x5

.field private static final n:F = 1.0f

.field private static final o:Ljava/lang/String; = ".xml"

.field private static final p:I = -0x1

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Landroid/support/v7/widget/c$f;

.field final j:Landroid/content/Context;

.field final k:Ljava/lang/String;

.field l:Z

.field private final s:Ljava/lang/Object;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/content/Intent;

.field private w:Landroid/support/v7/widget/c$c;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-class v0, Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/c;->b:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/c;->q:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/c;->r:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    .line 260
    new-instance v0, Landroid/support/v7/widget/c$d;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c$d;-><init>(Landroid/support/v7/widget/c;)V

    iput-object v0, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$c;

    .line 265
    const/16 v0, 0x32

    iput v0, p0, Landroid/support/v7/widget/c;->x:I

    .line 275
    iput-boolean v2, p0, Landroid/support/v7/widget/c;->l:Z

    .line 286
    iput-boolean v1, p0, Landroid/support/v7/widget/c;->y:Z

    .line 294
    iput-boolean v2, p0, Landroid/support/v7/widget/c;->z:Z

    .line 299
    iput-boolean v1, p0, Landroid/support/v7/widget/c;->A:Z

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/c;->j:Landroid/content/Context;

    .line 349
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    .line 350
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/c;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v2, Landroid/support/v7/widget/c;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_0
    sget-object v1, Landroid/support/v7/widget/c;->r:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c;

    .line 333
    .local v0, "dataModel":Landroid/support/v7/widget/c;
    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/support/v7/widget/c;

    .end local v0    # "dataModel":Landroid/support/v7/widget/c;
    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    .restart local v0    # "dataModel":Landroid/support/v7/widget/c;
    sget-object v1, Landroid/support/v7/widget/c;->r:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    monitor-exit v2

    return-object v0

    .line 338
    .end local v0    # "dataModel":Landroid/support/v7/widget/c;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/support/v7/widget/c$e;)Z
    .locals 2
    .param p1, "historicalRecord"    # Landroid/support/v7/widget/c$e;

    .prologue
    .line 728
    iget-object v1, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 729
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/c;->z:Z

    .line 731
    invoke-direct {p0}, Landroid/support/v7/widget/c;->k()V

    .line 732
    invoke-direct {p0}, Landroid/support/v7/widget/c;->f()V

    .line 733
    invoke-direct {p0}, Landroid/support/v7/widget/c;->h()Z

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->notifyChanged()V

    .line 736
    :cond_0
    return v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->y:Z

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->z:Z

    if-nez v0, :cond_2

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 573
    :cond_2
    iput-boolean v4, p0, Landroid/support/v7/widget/c;->z:Z

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Landroid/support/v7/widget/c$g;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c$g;-><init>(Landroid/support/v7/widget/c;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 655
    invoke-direct {p0}, Landroid/support/v7/widget/c;->i()Z

    move-result v0

    .line 656
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/support/v7/widget/c;->j()Z

    move-result v1

    or-int/2addr v0, v1

    .line 657
    invoke-direct {p0}, Landroid/support/v7/widget/c;->k()V

    .line 658
    if-eqz v0, :cond_0

    .line 659
    invoke-direct {p0}, Landroid/support/v7/widget/c;->h()Z

    .line 660
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->notifyChanged()V

    .line 662
    :cond_0
    return-void
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$c;

    iget-object v1, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    .line 675
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 674
    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/c$c;->a(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-boolean v5, p0, Landroid/support/v7/widget/c;->A:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 689
    iput-boolean v4, p0, Landroid/support/v7/widget/c;->A:Z

    .line 690
    iget-object v5, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 691
    iget-object v5, p0, Landroid/support/v7/widget/c;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    .line 692
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 693
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 694
    .local v2, "resolveInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 695
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 696
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    new-instance v5, Landroid/support/v7/widget/c$b;

    invoke-direct {v5, p0, v1}, Landroid/support/v7/widget/c$b;-><init>(Landroid/support/v7/widget/c;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v4, 0x1

    .line 700
    .end local v0    # "i":I
    .end local v2    # "resolveInfoCount":I
    .end local v3    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return v4
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 711
    iget-boolean v2, p0, Landroid/support/v7/widget/c;->l:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/c;->z:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    .line 712
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 713
    iput-boolean v1, p0, Landroid/support/v7/widget/c;->l:Z

    .line 714
    iput-boolean v0, p0, Landroid/support/v7/widget/c;->y:Z

    .line 715
    invoke-direct {p0}, Landroid/support/v7/widget/c;->l()V

    .line 718
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 743
    iget-object v2, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/c;->x:I

    sub-int v1, v2, v3

    .line 744
    .local v1, "pruneCount":I
    if-gtz v1, :cond_1

    .line 754
    :cond_0
    return-void

    .line 747
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/c;->z:Z

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 749
    iget-object v2, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/c$e;

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private l()V
    .locals 18

    .prologue
    .line 963
    const/4 v3, 0x0

    .line 965
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/c;->j:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 973
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 974
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v15, "UTF-8"

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 976
    const/4 v12, 0x0

    .line 977
    .local v12, "type":I
    :goto_0
    const/4 v15, 0x1

    if-eq v12, v15, :cond_1

    const/4 v15, 0x2

    if-eq v12, v15, :cond_1

    .line 978
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_0

    .line 966
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_0
    move-exception v4

    .line 1031
    :cond_0
    :goto_1
    return-void

    .line 981
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_1
    const-string v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 982
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_1
    move-exception v14

    .line 1019
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v15, Landroid/support/v7/widget/c;->b:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1023
    if-eqz v3, :cond_0

    .line 1025
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1026
    :catch_2
    move-exception v15

    goto :goto_1

    .line 986
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    .line 987
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$e;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 990
    :cond_3
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    .line 991
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    .line 1023
    if-eqz v3, :cond_0

    .line 1025
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1026
    :catch_3
    move-exception v15

    goto :goto_1

    .line 994
    :cond_4
    const/4 v15, 0x3

    if-eq v12, v15, :cond_3

    const/4 v15, 0x4

    if-eq v12, v15, :cond_3

    .line 997
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, "nodeName":Ljava/lang/String;
    const-string v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 999
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1020
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$e;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_4
    move-exception v6

    .line 1021
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_7
    sget-object v15, Landroid/support/v7/widget/c;->b:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/c;->k:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1023
    if-eqz v3, :cond_0

    .line 1025
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 1026
    :catch_5
    move-exception v15

    goto/16 :goto_1

    .line 1002
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$e;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_5
    const/4 v15, 0x0

    :try_start_9
    const-string v16, "activity"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "activity":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "time"

    .line 1004
    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1005
    .local v10, "time":J
    const/4 v15, 0x0

    const-string v16, "weight"

    .line 1006
    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1007
    .local v13, "weight":F
    new-instance v9, Landroid/support/v7/widget/c$e;

    invoke-direct {v9, v2, v10, v11, v13}, Landroid/support/v7/widget/c$e;-><init>(Ljava/lang/String;JF)V

    .line 1008
    .local v9, "readRecord":Landroid/support/v7/widget/c$e;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1023
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$e;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/support/v7/widget/c$e;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_0
    move-exception v15

    if-eqz v3, :cond_6

    .line 1025
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1028
    :cond_6
    :goto_3
    throw v15

    .line 1026
    :catch_6
    move-exception v16

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 425
    iget-object v5, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v5

    .line 426
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    .line 428
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$b;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 429
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 430
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/c$b;

    .line 431
    .local v2, "currentActivity":Landroid/support/v7/widget/c$b;
    iget-object v4, v2, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    .line 432
    monitor-exit v5

    .line 435
    .end local v2    # "currentActivity":Landroid/support/v7/widget/c$b;
    .end local v3    # "i":I
    :goto_1
    return v3

    .line 429
    .restart local v2    # "currentActivity":Landroid/support/v7/widget/c$b;
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "currentActivity":Landroid/support/v7/widget/c$b;
    :cond_1
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1

    .line 436
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/c$b;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public a()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 411
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c$b;

    iget-object v0, v0, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 367
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    if-ne v0, p1, :cond_0

    .line 369
    monitor-exit v1

    .line 375
    :goto_0
    return-void

    .line 371
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/c;->A:Z

    .line 373
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 374
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/support/v7/widget/c$c;)V
    .locals 2
    .param p1, "activitySorter"    # Landroid/support/v7/widget/c$c;

    .prologue
    .line 588
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$c;

    if-ne v0, p1, :cond_0

    .line 590
    monitor-exit v1

    .line 597
    :goto_0
    return-void

    .line 592
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$c;

    .line 593
    invoke-direct {p0}, Landroid/support/v7/widget/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->notifyChanged()V

    .line 596
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/support/v7/widget/c$f;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v7/widget/c$f;

    .prologue
    .line 498
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iput-object p1, p0, Landroid/support/v7/widget/c;->B:Landroid/support/v7/widget/c$f;

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Landroid/content/Intent;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 458
    iget-object v7, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v7

    .line 459
    :try_start_0
    iget-object v8, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    if-nez v8, :cond_0

    .line 460
    monitor-exit v7

    move-object v0, v6

    .line 488
    :goto_0
    return-object v0

    .line 463
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 465
    iget-object v8, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/c$b;

    .line 467
    .local v2, "chosenActivity":Landroid/support/v7/widget/c$b;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Landroid/support/v7/widget/c;->v:Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 472
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 474
    iget-object v8, p0, Landroid/support/v7/widget/c;->B:Landroid/support/v7/widget/c$f;

    if-eqz v8, :cond_1

    .line 476
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v8, p0, Landroid/support/v7/widget/c;->B:Landroid/support/v7/widget/c$f;

    invoke-interface {v8, p0, v1}, Landroid/support/v7/widget/c$f;->a(Landroid/support/v7/widget/c;Landroid/content/Intent;)Z

    move-result v4

    .line 479
    .local v4, "handled":Z
    if-eqz v4, :cond_1

    .line 480
    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 484
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_1
    new-instance v5, Landroid/support/v7/widget/c$e;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v8, v9, v6}, Landroid/support/v7/widget/c$e;-><init>(Landroid/content/ComponentName;JF)V

    .line 486
    .local v5, "historicalRecord":Landroid/support/v7/widget/c$e;
    invoke-direct {p0, v5}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/widget/c$e;)Z

    .line 488
    monitor-exit v7

    goto :goto_0

    .line 489
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/support/v7/widget/c$b;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/support/v7/widget/c$e;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public c()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c$b;

    iget-object v0, v0, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 519
    :goto_0
    return-object v0

    .line 518
    :cond_0
    monitor-exit v1

    .line 519
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 533
    iget-object v6, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v6

    .line 534
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 536
    iget-object v5, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/c$b;

    .line 537
    .local v2, "newDefaultActivity":Landroid/support/v7/widget/c$b;
    iget-object v5, p0, Landroid/support/v7/widget/c;->t:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/c$b;

    .line 540
    .local v3, "oldDefaultActivity":Landroid/support/v7/widget/c$b;
    if-eqz v3, :cond_0

    .line 542
    iget v5, v3, Landroid/support/v7/widget/c$b;->b:F

    iget v7, v2, Landroid/support/v7/widget/c$b;->b:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v4, v5, v7

    .line 548
    .local v4, "weight":F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/support/v7/widget/c$b;->a:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/support/v7/widget/c$e;

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v0, v8, v9, v4}, Landroid/support/v7/widget/c$e;-><init>(Landroid/content/ComponentName;JF)V

    .line 553
    .local v1, "historicalRecord":Landroid/support/v7/widget/c$e;
    invoke-direct {p0, v1}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/widget/c$e;)Z

    .line 554
    monitor-exit v6

    .line 555
    return-void

    .line 545
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/support/v7/widget/c$e;
    .end local v4    # "weight":F
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_0

    .line 554
    .end local v2    # "newDefaultActivity":Landroid/support/v7/widget/c$b;
    .end local v3    # "oldDefaultActivity":Landroid/support/v7/widget/c$b;
    .end local v4    # "weight":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public d()I
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/c;->x:I

    monitor-exit v1

    return v0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(I)V
    .locals 2
    .param p1, "historyMaxSize"    # I

    .prologue
    .line 613
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/c;->x:I

    if-ne v0, p1, :cond_0

    .line 615
    monitor-exit v1

    .line 623
    :goto_0
    return-void

    .line 617
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/c;->x:I

    .line 618
    invoke-direct {p0}, Landroid/support/v7/widget/c;->k()V

    .line 619
    invoke-direct {p0}, Landroid/support/v7/widget/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->notifyChanged()V

    .line 622
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 642
    iget-object v1, p0, Landroid/support/v7/widget/c;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/widget/c;->g()V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/c;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
