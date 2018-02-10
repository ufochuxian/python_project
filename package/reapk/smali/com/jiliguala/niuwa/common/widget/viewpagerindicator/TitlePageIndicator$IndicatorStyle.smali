.class public final enum Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum None:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Triangle:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Underline:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->value:I

    .line 88
    return-void
.end method

.method public static fromValue(I)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->values()[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 92
    .local v0, "style":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    iget v4, v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->value:I

    if-ne v4, p0, :cond_0

    .line 96
    .end local v0    # "style":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    :goto_1
    return-object v0

    .line 91
    .restart local v0    # "style":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "style":Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method
