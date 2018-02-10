.class public Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;,
        Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private courseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemSize:I

.field protected mSubscriptionsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lrx/i/b;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;-><init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mUIHandler:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->performItemClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private performItemClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .local v1, "position":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mUIHandler:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 216
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mUIHandler:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->getItem(I)Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;
    if-nez p2, :cond_a

    .line 105
    new-instance v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;

    .end local v2    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;
    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;-><init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$1;)V

    .line 106
    .restart local v2    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0b0081

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    const v7, 0x7f090159

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 108
    const v7, 0x7f09017b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 109
    const v7, 0x7f0901e5

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->c:Landroid/widget/TextView;

    .line 110
    const v7, 0x7f090133

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->d:Landroid/widget/TextView;

    .line 111
    const v7, 0x7f09008a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->e:Landroid/widget/TextView;

    .line 112
    const v7, 0x7f090050

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->f:Landroid/widget/TextView;

    .line 114
    const v7, 0x7f09015a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->g:Landroid/widget/RelativeLayout;

    .line 115
    const v7, 0x7f09017c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->h:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 116
    const v7, 0x7f0901e6

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->i:Landroid/widget/TextView;

    .line 117
    const v7, 0x7f090134

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->j:Landroid/widget/TextView;

    .line 118
    const v7, 0x7f09008b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->k:Landroid/widget/TextView;

    .line 119
    const v7, 0x7f090051

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->l:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :goto_0
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->a:Landroid/widget/RelativeLayout;

    mul-int/lit8 v7, p1, 0x2

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_b

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    mul-int/lit8 v7, p1, 0x2

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 128
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    mul-int/lit8 v8, p1, 0x2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    .line 129
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->thmb:Ljava/lang/String;

    .line 130
    .local v3, "thumb":Ljava/lang/String;
    move-object v4, v3

    .line 133
    .local v4, "url":Ljava/lang/String;
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v7}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v7}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 134
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "qiniu.jiliguala.com"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v7

    iget-object v8, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/e/a;->y()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    invoke-virtual {v7, v4, v8, v9}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 139
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v7, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 141
    :cond_2
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->c:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->ttl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->d:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cttl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->e:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->donebaby:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->f:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->alldone:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    iget v7, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->alldone:I

    if-nez v7, :cond_c

    .line 148
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08037d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    :cond_3
    :goto_2
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->f:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->a:Landroid/widget/RelativeLayout;

    mul-int/lit8 v8, p1, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v5, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 157
    .local v5, "viewToClick1":Landroid/view/View;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 158
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/i/b;

    new-instance v8, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$1;

    invoke-direct {v8, p0, v5}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;Landroid/view/View;)V

    invoke-static {v5, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/i/b;->a(Lrx/m;)V

    .line 167
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "thumb":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "viewToClick1":Landroid/view/View;
    :cond_4
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->g:Landroid/widget/RelativeLayout;

    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v7, v7, 0x1

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_d

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 169
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    mul-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    .line 170
    .restart local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->thmb:Ljava/lang/String;

    .line 171
    .restart local v3    # "thumb":Ljava/lang/String;
    move-object v4, v3

    .line 174
    .restart local v4    # "url":Ljava/lang/String;
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->h:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v7}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->h:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v7}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 175
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "qiniu.jiliguala.com"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?imageMogr2/thumbnail/320x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    :cond_6
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v7

    iget-object v8, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->h:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/e/a;->y()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    invoke-virtual {v7, v4, v8, v9}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 180
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->h:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v7, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 182
    :cond_7
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->i:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->ttl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->j:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->cttl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->k:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->donebaby:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->l:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->alldone:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v1, 0x0

    .line 188
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    iget v7, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->alldone:I

    if-nez v7, :cond_e

    .line 189
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08037d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    :cond_8
    :goto_4
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->l:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v7, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->g:Landroid/widget/RelativeLayout;

    mul-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;->g:Landroid/widget/RelativeLayout;

    .line 198
    .local v6, "viewToClick2":Landroid/view/View;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 199
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/i/b;

    new-instance v8, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;

    invoke-direct {v8, p0, v6}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;Landroid/view/View;)V

    invoke-static {v6, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/i/b;->a(Lrx/m;)V

    .line 208
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "thumb":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "viewToClick2":Landroid/view/View;
    :cond_9
    return-object p2

    .line 123
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;
    check-cast v2, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;

    .restart local v2    # "holder":Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$b;
    goto/16 :goto_0

    .line 126
    :cond_b
    const/4 v7, 0x4

    goto/16 :goto_1

    .line 150
    .restart local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "thumb":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_c
    iget v7, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->alldone:I

    if-lez v7, :cond_3

    .line 151
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08037c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 167
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "thumb":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_d
    const/4 v7, 0x4

    goto/16 :goto_3

    .line 191
    .restart local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "thumb":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_e
    iget v7, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->alldone:I

    if-lez v7, :cond_8

    .line 192
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08037c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_4
.end method

.method public setSubscriptionsRef(Lrx/i/b;)V
    .locals 1
    .param p1, "subscriptionsRef"    # Lrx/i/b;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->mSubscriptionsRef:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;>;"
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->notifyDataSetChanged()V

    .line 67
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->courseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
