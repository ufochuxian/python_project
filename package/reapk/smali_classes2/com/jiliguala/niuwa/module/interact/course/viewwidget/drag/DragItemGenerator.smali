.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

.field private mFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;)V
    .locals 0
    .param p1, "dragWidget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    .line 30
    return-void
.end method

.method private createAndAddView(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/content/Context;II)V
    .locals 14
    .param p1, "container"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 76
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->targetCapacity:Ljava/util/HashMap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->targetCapacity:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 77
    .local v5, "needDefaultValue":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 78
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v9, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->targetCapacity:Ljava/util/HashMap;

    .line 80
    :cond_1
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 82
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, "imageView":Landroid/widget/ImageView;
    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->width:F

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float/2addr v10, v11

    float-to-int v4, v10

    .line 85
    .local v4, "itemWidth":I
    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->height:F

    move/from16 v0, p4

    int-to-float v11, v0

    mul-float/2addr v10, v11

    float-to-int v3, v10

    .line 86
    .local v3, "itemHeight":I
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v6, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->X:F

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float v7, v10, v11

    .line 88
    .local v7, "rx":F
    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->Y:F

    move/from16 v0, p4

    int-to-float v11, v0

    mul-float v8, v10, v11

    .line 90
    .local v8, "ry":F
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setLeft(I)V

    .line 91
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setTop(I)V

    .line 92
    float-to-int v10, v7

    float-to-int v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    new-instance v10, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-direct {v10, v11, v12}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;-><init>(II)V

    iput-object v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    .line 95
    new-instance v10, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    invoke-direct {v10, v4, v3}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;-><init>(II)V

    iput-object v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ad;->a()I

    move-result v10

    iput v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->attachedViewId:I

    .line 101
    iget v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->attachedViewId:I

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 103
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    invoke-virtual {p1, v1, v6}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-boolean v10, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    if-nez v10, :cond_2

    .line 114
    if-eqz v5, :cond_2

    .line 115
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->targetCapacity:Ljava/util/HashMap;

    iget-object v11, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 121
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbNormal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/e/a;->z()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v12

    .line 120
    invoke-virtual {v10, v11, v1, v12}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    goto/16 :goto_1

    .line 76
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .end local v3    # "itemHeight":I
    .end local v4    # "itemWidth":I
    .end local v5    # "needDefaultValue":Z
    .end local v6    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "rx":F
    .end local v8    # "ry":F
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 124
    .restart local v5    # "needDefaultValue":Z
    :cond_4
    new-instance v9, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    invoke-direct {v9, p1, v10}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;)V

    invoke-virtual {p1, v9}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->setDragViewCtrlr(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;)V

    .line 125
    return-void
.end method

.method private findDragItemTargets()V
    .locals 9

    .prologue
    .line 47
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->mapping:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 48
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Items | mapping is null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->mapping:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "srcId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 55
    .local v5, "targetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->findItemById(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    move-result-object v2

    .line 56
    .local v2, "srcItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, "targetId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 59
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->findItemById(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    move-result-object v3

    .line 60
    .local v3, "tarItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v3, :cond_3

    .line 61
    iget-object v8, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->targetMap:Ljava/util/Map;

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1    # "srcId":Ljava/lang/String;
    .end local v2    # "srcItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .end local v3    # "tarItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .end local v4    # "targetId":Ljava/lang/String;
    .end local v5    # "targetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private findItemById(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mDragWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/DragWidget;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 34
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public renderData(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/content/Context;II)V
    .locals 0
    .param p1, "container"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->findDragItemTargets()V

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->createAndAddView(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/content/Context;II)V

    .line 73
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragItemGenerator;->mFolderName:Ljava/lang/String;

    .line 43
    return-object p0
.end method
