.class Lcom/jiliguala/niuwa/logic/network/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/jiliguala/niuwa/logic/network/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/network/a/a;-><init>(Lcom/jiliguala/niuwa/logic/network/a/a$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/a/a$a;->a:Lcom/jiliguala/niuwa/logic/network/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
