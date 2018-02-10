.class public Lcom/jiliguala/niuwa/common/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "CHANNEL"

.field public static final b:Ljava/lang/String; = "UUID"

.field public static final c:Ljava/lang/String; = "JSON_STR"

.field public static final d:Ljava/lang/String; = "NPE_AUDIO_ITEM"

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/common/util/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-string v0, "CHANNEL"

    sget-object v1, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "userName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;D)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->setDouble(Ljava/lang/String;D)V

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/String;F)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setFloat(Ljava/lang/String;F)V

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setInt(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 43
    return-void
.end method
