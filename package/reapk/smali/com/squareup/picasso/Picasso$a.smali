.class public Lcom/squareup/picasso/Picasso$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/squareup/picasso/Downloader;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/squareup/picasso/d;

.field private e:Lcom/squareup/picasso/Picasso$c;

.field private f:Lcom/squareup/picasso/Picasso$d;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/x;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    if-nez p1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$a;->a:Landroid/content/Context;

    .line 638
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$a;
    .locals 2
    .param p1, "downloader"    # Lcom/squareup/picasso/Downloader;

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Downloader must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->b:Lcom/squareup/picasso/Downloader;

    if-eqz v0, :cond_1

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$a;->b:Lcom/squareup/picasso/Downloader;

    .line 649
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/Picasso$c;)Lcom/squareup/picasso/Picasso$a;
    .locals 2
    .param p1, "listener"    # Lcom/squareup/picasso/Picasso$c;

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->e:Lcom/squareup/picasso/Picasso$c;

    if-eqz v0, :cond_1

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$a;->e:Lcom/squareup/picasso/Picasso$c;

    .line 689
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/Picasso$d;)Lcom/squareup/picasso/Picasso$a;
    .locals 2
    .param p1, "transformer"    # Lcom/squareup/picasso/Picasso$d;

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->f:Lcom/squareup/picasso/Picasso$d;

    if-eqz v0, :cond_1

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transformer already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$a;->f:Lcom/squareup/picasso/Picasso$d;

    .line 706
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/d;)Lcom/squareup/picasso/Picasso$a;
    .locals 2
    .param p1, "memoryCache"    # Lcom/squareup/picasso/d;

    .prologue
    .line 670
    if-nez p1, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Memory cache must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    if-eqz v0, :cond_1

    .line 674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    .line 677
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/x;)Lcom/squareup/picasso/Picasso$a;
    .locals 2
    .param p1, "requestHandler"    # Lcom/squareup/picasso/x;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RequestHandler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$a;->g:Ljava/util/List;

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestHandler already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    return-object p0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso$a;
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$a;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 662
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor service already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$a;->c:Ljava/util/concurrent/ExecutorService;

    .line 665
    return-object p0
.end method

.method public a(Z)Lcom/squareup/picasso/Picasso$a;
    .locals 1
    .param p1, "debugging"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso$a;->b(Z)Lcom/squareup/picasso/Picasso$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/squareup/picasso/Picasso;
    .locals 18

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/Picasso$a;->a:Landroid/content/Context;

    .line 753
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$a;->b:Lcom/squareup/picasso/Downloader;

    if-nez v3, :cond_0

    .line 754
    invoke-static {v2}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/picasso/Picasso$a;->b:Lcom/squareup/picasso/Downloader;

    .line 756
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    if-nez v3, :cond_1

    .line 757
    new-instance v3, Lcom/squareup/picasso/n;

    invoke-direct {v3, v2}, Lcom/squareup/picasso/n;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    .line 759
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$a;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_2

    .line 760
    new-instance v3, Lcom/squareup/picasso/t;

    invoke-direct {v3}, Lcom/squareup/picasso/t;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/picasso/Picasso$a;->c:Ljava/util/concurrent/ExecutorService;

    .line 762
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$a;->f:Lcom/squareup/picasso/Picasso$d;

    if-nez v3, :cond_3

    .line 763
    sget-object v3, Lcom/squareup/picasso/Picasso$d;->a:Lcom/squareup/picasso/Picasso$d;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/picasso/Picasso$a;->f:Lcom/squareup/picasso/Picasso$d;

    .line 766
    :cond_3
    new-instance v7, Lcom/squareup/picasso/z;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    invoke-direct {v7, v3}, Lcom/squareup/picasso/z;-><init>(Lcom/squareup/picasso/d;)V

    .line 768
    .local v7, "stats":Lcom/squareup/picasso/z;
    new-instance v1, Lcom/squareup/picasso/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$a;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/Picasso$a;->b:Lcom/squareup/picasso/Downloader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    invoke-direct/range {v1 .. v7}, Lcom/squareup/picasso/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;)V

    .line 770
    .local v1, "dispatcher":Lcom/squareup/picasso/i;
    new-instance v8, Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/picasso/Picasso$a;->d:Lcom/squareup/picasso/d;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/picasso/Picasso$a;->e:Lcom/squareup/picasso/Picasso$c;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/picasso/Picasso$a;->f:Lcom/squareup/picasso/Picasso$d;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/picasso/Picasso$a;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso$a;->h:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso$a;->i:Z

    move/from16 v17, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v17}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/Picasso$c;Lcom/squareup/picasso/Picasso$d;Ljava/util/List;Lcom/squareup/picasso/z;ZZ)V

    return-object v8
.end method

.method public b(Z)Lcom/squareup/picasso/Picasso$a;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$a;->h:Z

    .line 735
    return-object p0
.end method

.method public c(Z)Lcom/squareup/picasso/Picasso$a;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$a;->i:Z

    .line 746
    return-object p0
.end method
