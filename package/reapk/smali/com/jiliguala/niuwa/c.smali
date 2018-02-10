.class public Lcom/jiliguala/niuwa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/jiliguala/niuwa/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    sput-object p0, Lcom/jiliguala/niuwa/c;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    sput-object p0, Lcom/jiliguala/niuwa/c;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/jiliguala/niuwa/c;->b:Ljava/lang/String;

    return-object v0
.end method
