.class public final enum Lcom/google/android/gms/internal/xh;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/xh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzciu:Lcom/google/android/gms/internal/xh;

.field public static final enum zzciv:Lcom/google/android/gms/internal/xh;

.field private static final synthetic zzciw:[Lcom/google/android/gms/internal/xh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/xh;

    const-string v1, "V1"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xh;->zzciu:Lcom/google/android/gms/internal/xh;

    new-instance v0, Lcom/google/android/gms/internal/xh;

    const-string v1, "V2"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/xh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xh;->zzciv:Lcom/google/android/gms/internal/xh;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/xh;

    sget-object v1, Lcom/google/android/gms/internal/xh;->zzciu:Lcom/google/android/gms/internal/xh;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/xh;->zzciv:Lcom/google/android/gms/internal/xh;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/xh;->zzciw:[Lcom/google/android/gms/internal/xh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/xh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xh;->zzciw:[Lcom/google/android/gms/internal/xh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/xh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/xh;

    return-object v0
.end method
