#include <a_npc>
#define RECORDING "RentalBot"

main()
{
}

public OnRecordingPlaybackEnd()
{
	StartRecordingPlayback(2, RECORDING);
}

public OnNPCSpawn()
{
	StartRecordingPlayback(2, RECORDING);
}
