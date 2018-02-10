.class Lcom/jiliguala/niuwa/logic/login/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/login/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/jiliguala/niuwa/logic/login/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/login/a/a;-><init>(Lcom/jiliguala/niuwa/logic/login/a/a$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/a/a$a;->a:Lcom/jiliguala/niuwa/logic/login/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
