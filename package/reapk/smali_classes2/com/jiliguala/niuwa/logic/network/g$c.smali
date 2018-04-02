.class Lcom/jiliguala/niuwa/logic/network/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static a:Lcom/jiliguala/niuwa/logic/network/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/network/g;-><init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/g$c;->a:Lcom/jiliguala/niuwa/logic/network/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
