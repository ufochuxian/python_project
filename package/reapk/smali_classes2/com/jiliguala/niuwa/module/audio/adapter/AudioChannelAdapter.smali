.class public Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;
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
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x2

    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mData:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mChannel:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    if-nez p2, :cond_1

    .line 106
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0b0061

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;-><init>()V

    .line 108
    .local v2, "groupHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;
    const v6, 0x7f0902a9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    .line 109
    const v6, 0x7f09011b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 117
    .local v5, "size":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 118
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;

    .line 125
    .local v0, "audioDataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mSelectedPos:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 126
    iget v6, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mSelectedPos:I

    if-ne v6, p1, :cond_2

    const/4 v4, 0x1

    .line 132
    .local v4, "selected":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 134
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 135
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    :goto_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->isOfflineChannel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->isFavChannel()Z

    move-result v6

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->isRecentPlayChannel()Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 145
    :cond_0
    const/4 v3, -0x1

    .line 147
    .local v3, "res":I
    :try_start_0
    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 149
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawable://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/e/a;->s()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .end local v3    # "res":I
    :goto_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->isOfflineChannel()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 163
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->j()I

    move-result v1

    .line 164
    .local v1, "count":I
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5df2\u4e0b\u8f7d("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .end local v1    # "count":I
    :goto_4
    return-object p2

    .line 112
    .end local v0    # "audioDataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .end local v2    # "groupHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;
    .end local v4    # "selected":Z
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;

    .restart local v2    # "groupHolder":Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;
    goto/16 :goto_0

    .line 126
    .restart local v0    # "audioDataPart":Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;
    .restart local v5    # "size":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 128
    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->channel:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mChannel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .restart local v4    # "selected":Z
    :goto_5
    goto/16 :goto_1

    .end local v4    # "selected":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 138
    .restart local v4    # "selected":Z
    :cond_5
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 139
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_2

    .line 155
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mIcon:Landroid/widget/ImageView;

    .line 156
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/e/a;->s()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    .line 155
    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 157
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 165
    :cond_7
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->isFavChannel()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 166
    const/4 v1, 0x0

    .line 167
    .restart local v1    # "count":I
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 168
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->i()I

    move-result v1

    .line 170
    :cond_8
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7ea2\u5fc3\u9891\u9053("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 171
    .end local v1    # "count":I
    :cond_9
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->isRecentPlayChannel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 172
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->b()I

    move-result v1

    .line 173
    .restart local v1    # "count":I
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6700\u8fd1\u8bb0\u5f55("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 175
    .end local v1    # "count":I
    :cond_a
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter$GroupHolder;->mTitle:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 150
    .restart local v3    # "res":I
    :catch_1
    move-exception v6

    goto/16 :goto_3
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AudioChannelTemplate$DataPart;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mData:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public updateElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/adapter/AudioChannelAdapter;->mChannel:Ljava/lang/String;

    .line 53
    return-void
.end method
