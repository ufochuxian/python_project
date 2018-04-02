.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field location:[I

.field private mChosenAnswers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrectAnswers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTargetCapacity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

.field private mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

.field private mDuringAd:Landroid/content/res/AssetFileDescriptor;

.field private mHasStart:Z

.field private mItemNumPerResult:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPossibleResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

.field private mTargetCapacity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sourPoolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;)V
    .locals 1
    .param p1, "dragView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;
    .param p2, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->location:[I

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mHasStart:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->sourPoolMap:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

    .line 52
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->initMediaPlayer()V

    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->initSoundPool()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->resultItemNum:I

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mItemNumPerResult:I

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->resultMapping:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->targetCapacity:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mTargetCapacity:Ljava/util/HashMap;

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->correctAnswers:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCorrectAnswers:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private addItemToResultMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "srcId"    # Ljava/lang/String;
    .param p2, "dstId"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 209
    .local v0, "itemSize":I
    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mItemNumPerResult:I

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->setCurTargetCapacity(Ljava/lang/String;)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_2
    return-void
.end method

.method private getMatchedResultJumpId()Ljava/lang/String;
    .locals 17

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 252
    .local v9, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;>;"
    if-eqz v9, :cond_4

    .line 254
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 255
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 256
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 258
    .local v10, "entryValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 260
    .local v7, "entryEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v12, 0x0

    .line 261
    .local v12, "matchCount":I
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 263
    .local v5, "entryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    .local v1, "chosenEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, "chosenKey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 267
    .local v3, "chosenValue":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 268
    .local v6, "entryEntryKey":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 270
    .local v8, "entryEntryValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 271
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "chosenEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "chosenKey":Ljava/lang/String;
    .end local v3    # "chosenValue":Ljava/lang/String;
    .end local v5    # "entryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "entryEntryKey":Ljava/lang/String;
    .end local v8    # "entryEntryValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mItemNumPerResult:I

    if-ne v12, v14, :cond_0

    .line 280
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v7    # "entryEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v10    # "entryValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "matchCount":I
    :goto_1
    return-object v11

    :cond_4
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private initMediaPlayer()V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDuringAd:Landroid/content/res/AssetFileDescriptor;

    .line 75
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initSoundPool()V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/logic/o/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/o/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->sourPoolMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->sourPoolMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    const v3, 0x7f0e0003

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/o/a;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private onDragItemToDst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "srcId"    # Ljava/lang/String;
    .param p2, "dstId"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->addItemToResultMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private onResetDragItemPos(Ljava/lang/String;)V
    .locals 4
    .param p1, "srcId"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "dstId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 196
    .local v0, "cap":I
    if-gtz v0, :cond_1

    .line 197
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v0    # "cap":I
    .end local v1    # "dstId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0    # "cap":I
    .restart local v1    # "dstId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setCurTargetCapacity(Ljava/lang/String;)V
    .locals 4
    .param p1, "dstId"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, "cap":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mTargetCapacity:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .local v1, "dstCap":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v1    # "dstCap":I
    :cond_0
    :goto_1
    return-void

    .line 240
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public checkResultList()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mChosenAnswers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 152
    .local v1, "size":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mItemNumPerResult:I

    if-ne v2, v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

    const-string v3, "default"

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;->onMatchResult(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->getMatchedResultJumpId()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "jumpId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "jumpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;->onMatchResult(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "jumpId":Ljava/lang/String;
    :cond_2
    const-string v0, "default"

    goto :goto_1
.end method

.method public getSrcRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 295
    :goto_0
    return-object v3

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 289
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 290
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 291
    .local v2, "srcObjWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 293
    .local v1, "srcObjHeight":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v5, v0, v2

    add-int v6, v4, v1

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 295
    .local v3, "srcRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public getTargetItem(Landroid/view/View;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .locals 15
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-virtual/range {p0 .. p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->getSrcRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 337
    .local v6, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 339
    .local v4, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v4, :cond_1

    .line 340
    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->targetMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 341
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 342
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 345
    .local v1, "dstTargetItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v10, v10, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v11, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v11, v11, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v12, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v12, v12, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v13, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v13, v13, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    add-int/2addr v12, v13

    iget-object v13, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v13, v13, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v14, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v14, v14, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    add-int/2addr v13, v14

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .local v0, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 351
    .local v7, "x":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 352
    .local v8, "y":I
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "srcRect":Landroid/graphics/Rect;
    add-int/lit8 v10, v7, -0x1

    add-int/lit8 v11, v8, -0x1

    add-int/lit8 v12, v7, 0x1

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    .restart local v6    # "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 356
    iget-boolean v10, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    if-eqz v10, :cond_0

    .line 362
    .end local v0    # "dstRect":Landroid/graphics/Rect;
    .end local v1    # "dstTargetItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ifTargetCapacityFull(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dstId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    :goto_0
    return v4

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v4, v3

    .line 222
    goto :goto_0

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mCurTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 225
    .local v1, "curCap":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mTargetCapacity:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    .local v0, "cap":I
    if-lt v1, v0, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public isItemResetToOriginalPosition(Landroid/view/View;)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->getSrcRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 301
    .local v2, "srcCurRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 303
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 308
    .local v1, "originalRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public isItemSlideToDstPosition(Landroid/view/View;)Z
    .locals 13
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->getSrcRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 314
    .local v6, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 315
    .local v4, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v4, :cond_2

    .line 316
    iget-object v7, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->targetMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 317
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 318
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 321
    .local v1, "dstTargetItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v8, v8, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v9, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v10, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v10, v10, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v11, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v11, v11, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    add-int/2addr v10, v11

    iget-object v11, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v11, v11, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v12, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v12, v12, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    add-int/2addr v11, v12

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 326
    .local v0, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    :cond_1
    const/4 v7, 0x1

    .line 331
    .end local v0    # "dstRect":Landroid/graphics/Rect;
    .end local v1    # "dstTargetItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;>;"
    .end local v5    # "key":Ljava/lang/String;
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onDragItemToDst(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 169
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->onDragItemToDst(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mHasStart:Z

    .line 370
    return-void
.end method

.method public onResetDragItemPos(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 182
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->onResetDragItemPos(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public releaseMeidaPlayer()V
    .locals 2

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/o/a;->a()V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDuringAd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDuringAd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startPlayFailMusic()V
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->stopMediaplayer()V

    .line 142
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->sourPoolMap:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/logic/o/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPlayMediaDuringDraging(Ljava/lang/String;)V
    .locals 3
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mHasStart:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 89
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mDragView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;->getDragDuringMusic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mHasStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPlaySuccessMusic()V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->stopMediaplayer()V

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/o/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->sourPoolMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/logic/o/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMediaplayer()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method
