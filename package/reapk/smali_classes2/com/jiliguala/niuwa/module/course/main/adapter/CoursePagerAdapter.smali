.class public Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;
.super Landroid/support/v4/app/ak;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private courseId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;",
            ">;"
        }
    .end annotation
.end field

.field private mFm:Landroid/support/v4/app/ag;

.field private mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Landroid/support/v4/app/ak;-><init>(Landroid/support/v4/app/ag;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mFm:Landroid/support/v4/app/ag;

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mFm:Landroid/support/v4/app/ag;

    const v2, 0x7f090179

    invoke-static {v1, v2, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    move-result-object v0

    .line 49
    .local v0, "subCoursefragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->courseId:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0, v2, v1, v3}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setSub(Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 50
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setShareDialogListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setPosition(I)V

    .line 52
    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    instance-of v2, p1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 68
    check-cast v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .line 69
    .local v1, "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getPosition()I

    move-result v0

    .line 71
    .local v0, "position":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->courseId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1, v3, v2, v4}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setSub(Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 76
    .end local v0    # "position":I
    .end local v1    # "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/ak;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public setShareDialogListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mShareDialogListener:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    .line 81
    return-void
.end method

.method public updateData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V
    .locals 1
    .param p1, "courseId"    # Ljava/lang/String;
    .param p3, "courseData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;",
            ">;",
            "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->courseId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mData:Ljava/util/ArrayList;

    .line 39
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 40
    return-void
.end method
