.class public Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;
    }
.end annotation


# static fields
.field public static final GRID_VIEW_NUM_COUNT:I = 0x3

.field public static final RADIO:D = 0.8

.field private static final TAG:Ljava/lang/String;

.field public static final UNINITIAL:I = -0x1


# instance fields
.field private imgParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mChannel:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x2

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mSelectedPos:I

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mChannel:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    if-nez p2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b009d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;-><init>()V

    .line 86
    .local v0, "groupHolder":Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;
    const v2, 0x7f0902a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f09011b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 94
    .local v1, "size":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 95
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 96
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mSelectedPos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 99
    iget v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mSelectedPos:I

    if-ne v2, p1, :cond_3

    .line 101
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 102
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 110
    :cond_0
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->thmb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->thmb:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    .line 112
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->t()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    .line 111
    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_2
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-object p2

    .line 90
    .end local v0    # "groupHolder":Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;
    .end local v1    # "size":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;

    .restart local v0    # "groupHolder":Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;
    goto/16 :goto_0

    .line 104
    .restart local v1    # "size":I
    :cond_3
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 105
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public setSelectPos(I)V
    .locals 0
    .param p1, "selectPos"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mSelectedPos:I

    .line 126
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardChannelData$DataPart;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardChannelAdapter;->mData:Ljava/util/ArrayList;

    .line 50
    return-void
.end method
