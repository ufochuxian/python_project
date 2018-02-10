.class public final enum Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum CENTER:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;


# instance fields
.field private mHelper:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "TOP_LEFT"

    new-instance v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v5, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "TOP_RIGHT"

    new-instance v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v6, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "BOTTOM_LEFT"

    new-instance v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v7, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "BOTTOM_RIGHT"

    new-instance v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/b;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v8, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "LEFT"

    new-instance v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;

    sget-object v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v9, v2}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "TOP"

    const/4 v2, 0x5

    new-instance v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/d;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/d;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "RIGHT"

    const/4 v2, 0x6

    new-instance v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/e;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "BOTTOM"

    const/4 v2, 0x7

    new-instance v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/d;

    sget-object v4, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/d;-><init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    const-string v1, "CENTER"

    const/16 v2, 0x8

    new-instance v3, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/a;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/a;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->CENTER:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v8

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->CENTER:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;)V
    .locals 0
    .param p3, "helper"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->mHelper:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    return-object v0
.end method


# virtual methods
.method public updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/Rect;
    .param p5, "snapRadius"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->mHelper:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->a(FFFLandroid/graphics/Rect;F)V

    .line 50
    return-void
.end method

.method public updateCropWindow(FFLandroid/graphics/Rect;F)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/Rect;
    .param p4, "snapRadius"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->mHelper:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/c;->a(FFLandroid/graphics/Rect;F)V

    .line 45
    return-void
.end method
