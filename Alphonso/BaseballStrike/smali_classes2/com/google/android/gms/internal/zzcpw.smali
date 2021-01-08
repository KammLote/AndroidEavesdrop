.class public final Lcom/google/android/gms/internal/zzcpw;
.super Lcom/google/android/gms/nearby/messages/internal/zzab;

# interfaces
.implements Lcom/google/android/gms/internal/zzcpm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzab;",
        "Lcom/google/android/gms/internal/zzcpm",
        "<",
        "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbzH:Lcom/google/android/gms/internal/zzcpr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcpr",
            "<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbzE:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcpx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcpx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcpw;->zzbzH:Lcom/google/android/gms/internal/zzcpr;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzab;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpw;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpw;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    sget-object v1, Lcom/google/android/gms/internal/zzcpw;->zzbzH:Lcom/google/android/gms/internal/zzcpr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zzzX()Lcom/google/android/gms/internal/zzbdv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpw;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    return-object v0
.end method
