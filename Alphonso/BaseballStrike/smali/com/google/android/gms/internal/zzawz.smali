.class final Lcom/google/android/gms/internal/zzawz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private synthetic zzaxe:Lcom/google/android/gms/internal/zzawy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawz;->zzaxe:Lcom/google/android/gms/internal/zzawy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawz;->zzaxe:Lcom/google/android/gms/internal/zzawy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzawx;->zzch(Ljava/lang/String;)V

    return-void
.end method
