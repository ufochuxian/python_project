.class Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
