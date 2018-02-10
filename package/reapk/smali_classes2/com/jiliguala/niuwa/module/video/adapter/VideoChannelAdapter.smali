.class public Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;
.super Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;
    }
.end annotation


# static fields
.field public static final GRID_VIEW_NUM_COUNT:I = 0x3

.field public static final RADIO:D = 0.8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private imgParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    .line 40
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/adapter/BaseSelectionNormalAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v3

    .line 117
    .local v3, "item":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    if-nez v3, :cond_0

    move-object v0, p2

    .line 188
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 121
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_3

    .line 122
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0b0072

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$1;)V

    .line 124
    .local v2, "holder":Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;
    const v8, 0x7f0902a3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->a:Landroid/widget/ImageView;

    .line 125
    const v8, 0x7f09011b

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->b:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    int-to-double v8, v8

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 133
    .local v6, "size":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 134
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 135
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->imgParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    .line 139
    .local v7, "videoDataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    iget v8, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mSelectedPos:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 140
    iget v8, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mSelectedPos:I

    if-ne p1, v8, :cond_4

    const/4 v5, 0x1

    .line 144
    .local v5, "selected":Z
    :goto_2
    if-eqz v5, :cond_7

    .line 145
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->a:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 146
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->b:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    :goto_3
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->isFavChannel()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "count":I
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->l()I

    move-result v1

    .line 160
    :cond_1
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->b:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7ea2\u5fc3\u9891\u9053("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .end local v1    # "count":I
    :goto_4
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->isFavChannel()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->isRecentPlayChannel()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 175
    :cond_2
    const/4 v4, -0x1

    .line 177
    .local v4, "res":I
    :try_start_0
    iget-object v8, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 179
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawable://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/e/a;->u()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "res":I
    :goto_5
    move-object v0, p2

    .line 188
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 129
    .end local v0    # "convertView":Landroid/view/View;
    .end local v2    # "holder":Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;
    .end local v5    # "selected":Z
    .end local v6    # "size":I
    .end local v7    # "videoDataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;

    .restart local v2    # "holder":Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;
    goto/16 :goto_1

    .line 140
    .restart local v6    # "size":I
    .restart local v7    # "videoDataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 142
    :cond_5
    if-eqz v7, :cond_6

    iget-object v8, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v7, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mCurrentChannel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    .restart local v5    # "selected":Z
    :goto_6
    goto/16 :goto_2

    .end local v5    # "selected":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 149
    .restart local v5    # "selected":Z
    :cond_7
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->a:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 150
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->b:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_3

    .line 161
    :cond_8
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->isRecentPlayChannel()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 162
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->c()I

    move-result v1

    .line 163
    .restart local v1    # "count":I
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->b:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6700\u8fd1\u8bb0\u5f55("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 171
    .end local v1    # "count":I
    :cond_9
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->b:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 184
    :cond_a
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->thmb:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter$a;->a:Landroid/widget/ImageView;

    .line 185
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/e/a;->u()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v11

    .line 184
    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    goto/16 :goto_5

    .line 180
    .restart local v4    # "res":I
    :catch_0
    move-exception v8

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    .line 50
    :cond_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public setmCurrentChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCurrentChannel"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->mCurrentChannel:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public updateDateSet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/adapter/VideoChannelAdapter;->data:Ljava/util/ArrayList;

    .line 60
    return-void
.end method
