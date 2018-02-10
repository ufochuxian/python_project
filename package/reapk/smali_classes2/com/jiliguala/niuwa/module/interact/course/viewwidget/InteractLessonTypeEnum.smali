.class public final enum Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

.field public static final enum MC_PHONICS:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

.field public static final enum NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;


# instance fields
.field public code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    const-string v1, "MC_PHONICS"

    invoke-direct {v0, v1, v3, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->MC_PHONICS:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->NORMAL:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->MC_PHONICS:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->$VALUES:[Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->$VALUES:[Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    return-object v0
.end method
