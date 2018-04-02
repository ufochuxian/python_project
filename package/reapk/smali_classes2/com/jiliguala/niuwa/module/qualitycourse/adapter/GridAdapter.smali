.class public Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCourseCatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "courseCatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mCourseCatList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mCourseCatList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mCourseCatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00de

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;-><init>()V

    .line 64
    .local v1, "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;
    const v2, 0x7f0905a2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;->a:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f0901ac

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;->b:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mCourseCatList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .line 73
    .local v0, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->icon:Ljava/lang/String;

    iget-object v4, v1, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 78
    return-object p2

    .line 68
    .end local v0    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .end local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;

    .restart local v1    # "viewHolder":Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter$a;
    goto :goto_0
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "courseCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->mCourseCatList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method
