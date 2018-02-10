.class Lcom/jiliguala/niuwa/MyApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/MyApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/MyApplication;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/jiliguala/niuwa/MyApplication$1;->a:Lcom/jiliguala/niuwa/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication$1;->a:Lcom/jiliguala/niuwa/MyApplication;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/fabric/sdk/android/i;

    const/4 v2, 0x0

    new-instance v3, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/fabric/sdk/android/d;->a(Landroid/content/Context;[Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/d;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication$1;->a:Lcom/jiliguala/niuwa/MyApplication;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->t()V

    .line 135
    return-void
.end method
