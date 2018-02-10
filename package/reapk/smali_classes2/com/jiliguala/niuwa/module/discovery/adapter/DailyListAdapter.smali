.class public Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;
.super Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;
    }
.end annotation


# static fields
.field public static final RADIO:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentFm:Landroid/support/v4/app/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 42
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mParentFm:Landroid/support/v4/app/ag;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->setNumColumns(I)V

    .line 45
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->setRowPadding(I)V

    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->setClickListener()V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->goToHotSubject(Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;)V

    return-void
.end method

.method private bindHotSubjectView(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 162
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 163
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;

    if-eqz v3, :cond_4

    move-object v0, v2

    .line 164
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;

    .line 165
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;

    .line 167
    .local v1, "hotSubjectViewHolder":Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->color:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->color:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    :cond_1
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->icon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->icon:Ljava/lang/String;

    iget-object v5, v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->b:Landroid/widget/ImageView;

    .line 174
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v6

    .line 173
    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 176
    :cond_2
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->b:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 179
    :cond_3
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->outtitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 180
    iget-object v3, v1, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->outtitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;
    .end local v1    # "hotSubjectViewHolder":Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;
    :cond_4
    return-void
.end method

.method private goToHotSubject(Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;)V
    .locals 8
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;

    .prologue
    const v7, 0x7f01001e

    const v6, 0x7f01001d

    .line 206
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mParentFm:Landroid/support/v4/app/ag;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    move-result-object v2

    .line 207
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "channel"

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->channel:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "title"

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "pic"

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->icon:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "color"

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;->color:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 221
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mParentFm:Landroid/support/v4/app/ag;

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 222
    .local v3, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v3, v6, v7, v6, v7}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 223
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 224
    const v4, 0x7f090478

    sget-object v5, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 225
    sget-object v4, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 229
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 230
    return-void

    .line 219
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :cond_1
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 227
    .restart local v3    # "ft":Landroid/support/v4/app/an;
    :cond_2
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method

.method private setClickListener()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 202
    return-void
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    invoke-virtual {p0, p3}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->newHotSubjectView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->bindHotSubjectView(Landroid/view/View;I)V

    .line 69
    return-object p2
.end method

.method public newHotSubjectView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b00d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;)V

    .line 86
    .local v0, "hotSubjectViewHolder":Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;
    const v2, 0x7f09026b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->a:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f09026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->b:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f090538

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$a;->c:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    return-object v1
.end method

.method public updateDataSet(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
