.class final enum Lio/fabric/sdk/android/services/common/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/common/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARM64:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARMV6:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARMV7:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARMV7S:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum ARM_UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum PPC:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum PPC64:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum X86_32:Lio/fabric/sdk/android/services/common/i$a;

.field public static final enum X86_64:Lio/fabric/sdk/android/services/common/i$a;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/common/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lio/fabric/sdk/android/services/common/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 154
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->X86_32:Lio/fabric/sdk/android/services/common/i$a;

    .line 155
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->X86_64:Lio/fabric/sdk/android/services/common/i$a;

    .line 156
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARM_UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    .line 157
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->PPC:Lio/fabric/sdk/android/services/common/i$a;

    .line 158
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->PPC64:Lio/fabric/sdk/android/services/common/i$a;

    .line 159
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARMV6:Lio/fabric/sdk/android/services/common/i$a;

    .line 160
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARMV7:Lio/fabric/sdk/android/services/common/i$a;

    .line 161
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    .line 162
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARMV7S:Lio/fabric/sdk/android/services/common/i$a;

    .line 163
    new-instance v0, Lio/fabric/sdk/android/services/common/i$a;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->ARM64:Lio/fabric/sdk/android/services/common/i$a;

    .line 153
    const/16 v0, 0xa

    new-array v0, v0, [Lio/fabric/sdk/android/services/common/i$a;

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->X86_32:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->X86_64:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->ARM_UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->PPC:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v7

    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->PPC64:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARMV6:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARMV7:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARMV7S:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARM64:Lio/fabric/sdk/android/services/common/i$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->b:[Lio/fabric/sdk/android/services/common/i$a;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    .line 168
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARMV7:Lio/fabric/sdk/android/services/common/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARMV6:Lio/fabric/sdk/android/services/common/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    const-string v1, "arm64-v8a"

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->ARM64:Lio/fabric/sdk/android/services/common/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->X86_32:Lio/fabric/sdk/android/services/common/i$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lio/fabric/sdk/android/services/common/i$a;
    .locals 5

    .prologue
    .line 179
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 181
    .local v0, "arch":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    .line 192
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 188
    sget-object v2, Lio/fabric/sdk/android/services/common/i$a;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/common/i$a;

    .line 189
    .local v1, "value":Lio/fabric/sdk/android/services/common/i$a;
    if-nez v1, :cond_0

    .line 190
    sget-object v1, Lio/fabric/sdk/android/services/common/i$a;->UNKNOWN:Lio/fabric/sdk/android/services/common/i$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/i$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const-class v0, Lio/fabric/sdk/android/services/common/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/common/i$a;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/common/i$a;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lio/fabric/sdk/android/services/common/i$a;->b:[Lio/fabric/sdk/android/services/common/i$a;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/common/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/common/i$a;

    return-object v0
.end method
