.class public final enum Lcom/alibaba/sdk/android/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/a/c;

.field public static final enum b:Lcom/alibaba/sdk/android/a/c;

.field private static final synthetic c:[Lcom/alibaba/sdk/android/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/sdk/android/a/c;

    const-string v1, "UNREPORTED"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/a/c;->a:Lcom/alibaba/sdk/android/a/c;

    new-instance v0, Lcom/alibaba/sdk/android/a/c;

    const-string v1, "REPORTED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/a/c;->b:Lcom/alibaba/sdk/android/a/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/sdk/android/a/c;

    sget-object v1, Lcom/alibaba/sdk/android/a/c;->a:Lcom/alibaba/sdk/android/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/a/c;->b:Lcom/alibaba/sdk/android/a/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/sdk/android/a/c;->c:[Lcom/alibaba/sdk/android/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
