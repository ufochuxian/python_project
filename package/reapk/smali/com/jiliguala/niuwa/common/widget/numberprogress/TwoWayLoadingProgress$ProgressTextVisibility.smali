.class public final enum Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressTextVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

.field public static final enum Invisible:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

.field public static final enum Visible:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    const-string v1, "Visible"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->Visible:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    const-string v1, "Invisible"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->Invisible:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    .line 487
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->Visible:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->Invisible:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    const-class v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress$ProgressTextVisibility;

    return-object v0
.end method
