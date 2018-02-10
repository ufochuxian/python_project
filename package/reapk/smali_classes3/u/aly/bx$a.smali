.class public Lu/aly/bx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bx$a$b;,
        Lu/aly/bx$a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "aggregated"

.field public static final b:Ljava/lang/String; = "aggregated_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
