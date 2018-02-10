.class final enum Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DONE:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

.field public static final enum PREVIEW:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

.field public static final enum SUCCESS:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

.field private static final synthetic a:[Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->PREVIEW:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->SUCCESS:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->DONE:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    sget-object v1, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->PREVIEW:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->SUCCESS:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->DONE:Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->a:[Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->a:[Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/zxing/utils/CaptureActivityHandler$a;

    return-object v0
.end method
