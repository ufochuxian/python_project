.class final enum Lcom/alibaba/mtl/appmonitor/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/mtl/appmonitor/a$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alibaba/mtl/appmonitor/a$f;

.field public static final enum b:Lcom/alibaba/mtl/appmonitor/a$f;

.field public static final enum c:Lcom/alibaba/mtl/appmonitor/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1413
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$f;

    const-string v1, "Local"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a$f;->b:Lcom/alibaba/mtl/appmonitor/a$f;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$f;

    const-string v1, "Service"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/mtl/appmonitor/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a$f;->c:Lcom/alibaba/mtl/appmonitor/a$f;

    .line 1412
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/mtl/appmonitor/a$f;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a$f;->b:Lcom/alibaba/mtl/appmonitor/a$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a$f;->c:Lcom/alibaba/mtl/appmonitor/a$f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a$f;->a:[Lcom/alibaba/mtl/appmonitor/a$f;

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
    .line 1412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
